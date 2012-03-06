class PagesController < ApplicationController
  
  def show

       @page = Page.find(params[:id])
       @menu = Page.find(:all)
        @main = Main.find(1)
         
  end
  
  

end
