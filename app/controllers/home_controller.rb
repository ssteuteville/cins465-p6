class HomeController < ApplicationController
  def home
  	if params[:search] != "" and !params[:search].nil?
  		redirect_to(doi_path(params[:search]))
  	end
  end
end
