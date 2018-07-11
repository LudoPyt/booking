class Admin::MyUnavailabilitiesController < ApplicationController
before_action :require_admin

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
    @meet.user = current_user
    if @meet.save
      redirect_to admin_my_unavailabilities_path
    else
      render :new
    end

  end

  def edit
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.new(meet_params)
    @meet.update(meet_params)
    redirect_to admin_my_unavailability_path
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to admin_my_unavailabilities_path
  end

  private

  def meet_params
    params.require(:meet).permit(:date, :reason)
  end

  def require_admin
    unless current_user.admin?
    redirect_to meets_path
    end
  end
end
