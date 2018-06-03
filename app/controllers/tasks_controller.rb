class TasksController < ApplicationController
  before_action :require_member_logged_in
  before_action :correct_member , only: [:edit, :update, :destroy] 
 
  def create
    @task = current_member.tasks.build(task_params)
    if @task.save
      flash[:success] = 'タスク が正常に登録されました。'
      redirect_to root_url
    else
      @tasks = current_member.tasks.order('created_at DESC').page(params[:page])
      flash.now[:danger] = 'タスク が登録されませんでした。'
      render 'toppages/index'
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:success] = 'タスク が正常に更新されました'
      redirect_to root_url
    else
      flash.now[:danger] = 'タスク が更新されませんでした'
      render :edit
    end
  end


  def destroy
    @task.destroy
    flash[:success] = 'タスクは正常に削除されました'
    redirect_back(fallback_location: root_path)
  end

private
def set_task
  @task = Task.find(params[:id])
end
  
def task_params
  params.require(:task).permit(:content, :status)
end

def correct_member
    @task = current_member.tasks.find_by(id: params[:id])
    unless @task
      redirect_to root_url
    end
end

end
