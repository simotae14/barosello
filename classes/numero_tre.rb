begin
  gem "colorize"
rescue LoadError
  system("gem install colorize")
  Gem.clear_paths
end

require 'colorize'

class NumeroTre < NumeroDue
  def output_val
		if (@value != 0 && @value % 3 == 0 && @value % 5 == 0)
  		@message = "BaroSello".blue
  	elsif (@value != 0 && @value % 3 == 0)
  		@message = "Baro".green
  	elsif (@value != 0 && @value % 5 == 0)
  		@message = "Sello".red
  	elsif (@value != 0 && @value % 7 == 0)
  		@message = "Nardo".yellow
		else
  		@message = @value
  	end  
  end

end