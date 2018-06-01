class MembersController < ApplicationController
  before_action :require_member_logged_in, only: [:index, :show]
  
  def index
    @members = Member.all.page(params[:page])
  end

  def show
    @member = Member.find(params[:id])
    @tasks = @member.tasks.order('created_at DESC').page(params[:page])
    counts(@member)
  end

  def new
    @member = Member.new
  end

  def create
     @member = Member.new(member_params)

    if @member.save
      flash[:success] = 'メンバーを登録しました。'
      redirect_to @member
    else
      flash.now[:danger] = 'メンバーの登録に失敗しました。'
      render :new
    end
  end

  private

  def member_params
    params.require(:member).permit(:name, :profile, :password, :password_confirmation)
  end
end
