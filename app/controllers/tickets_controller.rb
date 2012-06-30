class TicketsController < ApplicationController
  
  before_filter :lighthouse_auth, :find_tickets
  
  def index
    
  end
  
  def lighthouse_auth
    Lighthouse.account = 't1dfirst'
    Lighthouse.token = 'fad70b09c02cf13c6bf307508cec2465d7eb3840'
  end
  
  def find_tickets
    @projects = Lighthouse::Project.find(:all)
    # @tickets = project.tickets
  end
  
end