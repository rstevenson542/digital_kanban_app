class TicketsController < ApplicationController
  
  def index
    @tickets = @project.tickets 
  end
  
  def show
    @ticket = @project.tickets(params[:id])
  end

end