class Houseware < Item
  def price
	if @price > 100
	  @price - (@price * 0.05)
    else
      @price
    end
  end
end
