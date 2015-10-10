class HomeController < ApplicationController
  def index
    if current_user
      @car = Vehicle.where(user_id: current_user.id).first
      if !@car.nil?
        $car = @car.id
        #render :text => $car
      end
    end
  end
  def aboutus
  end
end
