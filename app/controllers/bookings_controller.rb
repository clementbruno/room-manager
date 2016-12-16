class BookingsController < ApplicationController
  before_action :set_room, only: [ :show, :edit, :update ]

  #Afficher les rooms du user qui les a cree
  def index
    @bookings = Booking.where(user_id: current_user)
    @room_bookings = Booking.where(room_id: params[:id])
  end

  #
  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'Your booking was successfully created'
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      flash[:notice] = 'Your booking was successfully updated'
      redirect_to bookings_path
    else
      render :edit
    end
  end

  private

  def set_room
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :name, :room_id, :start_time, :end_time)
  end
end
