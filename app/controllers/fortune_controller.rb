class FortuneController < ApplicationController
	
	def horoscope_and_lucky_numbers

		@lucky_numbers = Array.new
		5.times do
		@num = rand(1..100)
		@lucky_numbers.push(@num)

	end
		all_zodiacs = Zodiac.list
			this_zodiac = params.fetch("the_sign").to_sym
			@Zodiac = Zodiac.list.fetch(this_zodiac)
			@name = @Zodiac.fetch(:name).to_s
			@horoscope = @Zodiac.fetch(:horoscope)
		
		render({ :template => "horoscopes.html.erb" })
	end

end
