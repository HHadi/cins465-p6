class HomeController < ApplicationController
	# skip_before_filter :authenticate_user! , :only => [:index]
  def index
  end

  def search
  	doi = Doi.id 
  	if doi == nill
  		redirect_to 'dois#index' , alert: "Something serious happened"
  	else
  		redirect_to 'home#index', alert: "good job"
  	end
  end

end
