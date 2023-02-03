class LotteryController < ApplicationController
  def lucky
    @array_of_numbers = []
    5.times do
      another_number = rand(1..100)
      
      @array_of_numbers.push(another_number)
    end
    render({ :template => "lottery_templates/lucky.html.erb"})
  end
  
  def unlucky
    @array_of_numbers = []
    5.times do
      another_number = rand(1..100)
      
      @array_of_numbers.push(another_number)
    end
    render({ :template => "lottery_templates/unlucky.html.erb"})
  end
end
