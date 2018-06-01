class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private

  def require_member_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(member)
    @count_tasks = member.tasks.count
  end
end
