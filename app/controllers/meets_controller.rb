class MeetsController < ApplicationController


  def index
    @meets = Meet.all

  end

  def my_bookings
  @meets = current_user.meets
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
      redirect_to my_bookings_path
    else
      render 'new'
   end
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to my_bookings_path
  end

  private

  def meet_params
    params.require(:meet).permit(:date, :first_name, :last_name)
  end

end
