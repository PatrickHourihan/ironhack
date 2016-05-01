class Fruit < Item
  def price
	today = Time.now
	  if today.saturday? || today.sunday?
		@price - (@price * 0.1)
	  else
	  	@price
	  end
  end
end
