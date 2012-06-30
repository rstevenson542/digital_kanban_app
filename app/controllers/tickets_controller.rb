class TicketsController < ApplicationController
  
  before_filter :lighthouse_auth, :project_resources
  
  def index
    
  end
  
  def show
    @ticket = @project.tickets(params[:id])
  end
  
  def lighthouse_auth
    Lighthouse.account = 't1dfirst'
    Lighthouse.token = 'fad70b09c02cf13c6bf307508cec2465d7eb3840'
  end
  
  def project_resources
    @project = Lighthouse::Project.find('75196-myglu')
    @tickets = @project.tickets
  end

end