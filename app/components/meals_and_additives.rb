class MealsAndAdditives < Netzke::Base
  # Remember regions collapse state and size
  include Netzke::Basepack::ItemPersistence

  def configure(c)
    super
    c.items = [
      { netzke_component: :meals, region: :center },
      #{ netzke_component: :boss_details, region: :east, width: 240, split: true },
      { netzke_component: :additives, region: :south, height: 250, split: true }
    ]
  end

  js_configure do |c|
    c.layout = :border
    c.border = false

    # Overriding initComponent
    c.init_component = <<-JS
      function(){
        // calling superclass's initComponent
        this.callParent();
		
		var view = this.getComponent('meals').getView();
		view.on('itemclick', function(view, record){
          this.selectMeal({meal_id: record.get('id')});
          this.getComponent('additives').getStore().load();
        }, this);
      }
    JS
  end

  endpoint :select_meal do |params, this|
   component_session[:selected_meal_id] = params[:meal_id]
  end
  
  component :meals do |c|
   c.title = "Mahlzeiten"
  end

  component :additives do |c|
   c.force_fit = true
   c.klass = Netzke::Basepack::Grid
   c.model = "AdditiveReference"
   c.title = "Zusatzstoffe"
   c.data_store = {auto_load: false}
   c.scope = {:meal_id => component_session[:selected_meal_id]}
   c.strong_default_attrs = {:meal_id => component_session[:selected_meal_id]}
   c.columns = [
		{
			:name => :additive__description,
			:width => 400,
			:read_only => false
		},
		{
			:name => :created_at,
			:width => 100,
			:read_only => true
		},
		{
			:name => :updated_at,
			:width => 100,
			:read_only =>true
		}
	]
	c.enable_column_filters = false
	c.enable_edit_in_form = false
	c.enable_edit_inline = true
	c.enable_extended_search  = false
	c.force_fit = true
  end
end