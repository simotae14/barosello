class NumeroUno
	attr_accessor :value, :message
	
	def initialize(value)
	    @value = value
        @message = output_val
    end

    def output_val
  	    if (@value != 0 && @value % 3 == 0 && @value % 5 == 0)
  		    @message = "BaroSello"
  	    elsif (@value != 0 && @value % 3 == 0)
  		    @message = "Baro"
  	    elsif (@value != 0 && @value % 5 == 0)
  		    @message = "Sello"
  	    else
  		    @message = @value
  	    end  	
    end
end