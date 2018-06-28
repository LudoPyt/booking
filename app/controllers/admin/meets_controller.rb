class Admin::MeetsController < ApplicationController

  def index
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
    @meet.save
    redirect_to meet_path
  end

  def edit
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.new(meet_params)
    @meet.update(meet_params)
    redirect_to meet_path
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to meet_path
  end

  private

  def meet_params
    params.require(:meet).permit(:date)
  end
end
