class Meals < Netzke::Basepack::Grid

  js_configure do |c|
	c.init_component = <<-JS
      function(){
        // calling superclass's initComponent
        this.callParent();
		this.on("selectionchange",function(selModel){
			//alert("HI");
			//this.actions.printCard.setDisabled(selModel.getCount() > 1);
		});
		//this.on("beforeitemdblclick",function(view, record, item, index, e){
			//e.stopEvent();
			//view.events.itemdblclick;
			//console.log(view.events.itemdblclick);
			//console.log(view);//.onEditInForm.setDisabled(disabled);
		//});
      }
    JS
  end

  def configure(c)
	c.prevent_header = false
    c.model = "Meal"
	c.force_fit = true
	#c.tbar = [:print_card]
	c.columns = [
		{
			:name => :no,
			:width => 200
		},
		{
			:name => :name,
			:width => 400
		},
		{
			:name => :food_price__price
		},
		{
			:name => :created_at,
			:width => 200,
			:disabled => true
			
		},
		{
			:name => :updated_at,
			:width => 200,
			:disabled => true
		}
	]
	super(c)
  end
  
end