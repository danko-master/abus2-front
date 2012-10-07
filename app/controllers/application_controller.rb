class ApplicationController < ActionController::Base
  protect_from_forgery 
  
  before_filter :current_domain
  
  def current_domain
    if (!session[:current_domain_id] || (request.host_with_port != session[:current_domain_id]))
      @domain = Domain.where(:name => request.host_with_port).first 
      session[:current_domain_id] = @domain.id
      session[:current_domain_name] = @domain.name
    end    
  end
  
  
end
