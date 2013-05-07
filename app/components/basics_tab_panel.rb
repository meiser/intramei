class BasicsTabPanel < Netzke::Basepack::TabPanel

  component :meals_and_additives do |c|
   c.force_fit = true
   c.title = "Mahlzeiten"
  end

  component :food_prices do |c|
   c.force_fit = true
   c.title = "Preise"
  end
  
  component :additives do |c|
   c.force_fit = true
   c.klass = Netzke::Basepack::Grid
   c.model = "Additive"
   c.title = "Zusatzstoffe"
  end
  
  def configure(c)
  	c.active_tab = 0
	c.prevent_header = true
    c.items = [:meals_and_additives, :additives, :food_prices]
	super(c)
  end

end