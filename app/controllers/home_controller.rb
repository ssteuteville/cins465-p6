class HomeController < ApplicationController
  def home
  	if params[:search] != "" and !params[:search].nil?
  		redirect_to(doi_path(params[:search]))
  	end
  	if user_signed_in?
  		redirect_to dois_path
  	end
  end
end
