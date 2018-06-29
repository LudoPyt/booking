class MeetsController < ApplicationController
  def index
    @user = current_user
    @meets = Meet.all

  end

  def show
    @meet = Meet.find(params[:id])
  end

  def new
    @meet = Meet.new
  end

  def create
    @meet = Meet.new(meet_params)
    @meet.user = current_user
    if @meet.save
      render 'show'
    else
      render 'new'
   end
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to meets_path
  end

  private

  def meet_params
    params.require(:meet).permit(:date)
  end

end
