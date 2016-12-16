class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

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
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room_id = @room.id
    control = Booking.where(room_id: @booking.room_id).to_a
    values = []
    control.each do |booking|
      #Ici on check pour verifier que l'intervalle de temps de reservation souhaite n'est pas en conflit avec une reservation existante portant le meme room_id
      if (@booking.start_time - booking.end_time) * (booking.start_time - @booking.end_time) >= 0
      values << (@booking.start_time - booking.end_time) * (booking.start_time - @booking.end_time)
      end
    end

    if !values.empty?
      # if (@booking.start_time - booking.end_time) * (booking.start_time - @booking.end_time) >= 0
      flash[:alert] = "Your booking cannot be created since the room is already taken at that moment"
    else
      if @booking.save
        flash[:notice] = 'Your booking was successfully created'
      else
        flash[:alert] = "Your booking couldn't be created"
      end
    end
    redirect_to room_path(@room)
  end

  def update
    @room = @booking.room
    if @booking.update(booking_params)
      flash[:notice] = 'Your booking was successfully updated'
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def destroy
    @room = @booking.room
    @booking.delete
    redirect_to room_path(@room)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :name, :room_id, :start_time, :end_time)
  end
end
