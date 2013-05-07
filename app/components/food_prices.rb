class FoodPrices < Netzke::Basepack::Grid
  include ActionView::Helpers::NumberHelper
  def configure(c)
    super
    c.model = "FoodPrice"
	c.columns = [
		{
			:name => :price,
			:width => 400,
			:read_only => false,
			:getter => Proc.new{|r| number_to_currency(r.price, {:locale => :de, :unit => "€"})}
		}
	]
  end
  
end