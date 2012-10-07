class PagesController < ApplicationController
  
  def show
       @page = Page.find(params[:id])
       @menu = Page.where(:domain => session[:current_domain_id])
       @main = Main.find(session[:current_domain_id])        
  end

end
