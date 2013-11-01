class HomeController < ApplicationController
	skip_before_filter :authenticate_user! , :only => [:index]
  def index
  end

  def search
  	doi = Doi.id 
  	if doi == nill
  		redirect_to 'home#index' , alert: "No such a Doi"
  	else
  		redirect_to 'doi#show', alert: "Found"
  	end
  end

end
