class IndexController < ApplicationController
  
  def index
    
    #@domain = Domain.where(:name => request.host_with_port).first 
      #session[:current_domain_id] = @domain.id
      #session[:current_domain_name] = @domain.name
      
   #current_domain = Domain.where(:name => request.host_with_port).first 
   #$domain_id = current_domain.id
        
    @menumain = Page.where(:domain => session[:current_domain_id])
    @main = Main.find(session[:current_domain_id])
    @domain_title = Domain.find(session[:current_domain_id]).title 
  end

end
