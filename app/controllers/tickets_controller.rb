class TicketsController < ApplicationController
  
  before_filter :lighthouse_auth, :project_resources
  
  def index
    
  end
  
  def show
    @ticket = @project.tickets(params[:id])
  end
  
  

end