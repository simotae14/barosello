class NumeroDue < NumeroUno
  def output_val
		if (@value != 0 && @value % 3 == 0 && @value % 5 == 0)
  		@message = "BaroSello"
  	elsif (@value != 0 && @value % 3 == 0)
  		@message = "Baro"
  	elsif (@value != 0 && @value % 5 == 0)
  		@message = "Sello"
  	elsif (@value != 0 && @value % 7 == 0)
  		@message = "Nardo"
		else
  		@message = @value
  	end  
  end

end