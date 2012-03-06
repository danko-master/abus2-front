class IndexController < ApplicationController
  
  def index
    
    @menumain = Page.find(:all)
    @main = Main.find(1)
    
  end

end
