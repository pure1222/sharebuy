class HomeController < ApplicationController
  def top
  end
  def share
    
  end
  def create
    @applicant = Applicant.new(email: params[:email], want: params[:want])
    if @applicant.save
      ReserveMailer.reserve_share(@applicant).deliver
      redirect_to("/home/#{@applicant.id}")
    else
      flash[:notice]="メールアドレスもしくは、欲しいもののURL or 欲しいものが入力されていません。"
      redirect_to("/home/share")
    end
  end
  def confirm
    @applicant = Applicant.find_by(id: params[:id])
  end
  def description
    
  end
  def rule
  end
  
end
