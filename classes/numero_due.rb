class NumeroDue < NumeroUno
  def output_val
	if(@value != 0 && @value % 7 == 0)
	    @message = "Nardo"
	else
	    super
	end
  end
end