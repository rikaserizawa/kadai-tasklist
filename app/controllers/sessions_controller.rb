class SessionsController < ApplicationController
  def new
  end
  
  def create
    name = params[:session][:name]
    password = params[:session][:password]
    if login(name, password)
      flash[:success] = 'ログインに成功しました。'
      redirect_to @member
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render 'new'
    end
  end

  def destroy
    session[:member_id] = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end

  private

  def login(name, password)
    @member = Member.find_by(name: name)
    if @member && @member.authenticate(password)
      # ログイン成功
      session[:member_id] = @member.id
      return true
    else
      # ログイン失敗
      return false
    end
  end
end
