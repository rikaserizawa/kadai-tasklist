class ToppagesController < ApplicationController
  def index
    if logged_in?
      @member = current_member
      @task = current_member.tasks.build    
      @tasks = current_member.tasks.order('created_at DESC').page(params[:page])
    end
  end
end

