class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :project_resources
  
  def project_resources
      Lighthouse.account = APP_CONFIG['account'] 
      Lighthouse.token = APP_CONFIG['token']
      @project = Lighthouse::Project.find(APP_CONFIG['project'])
  end
  
end
