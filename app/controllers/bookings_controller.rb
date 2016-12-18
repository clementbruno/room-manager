class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

  #Afficher les rooms du user qui les a cree
  def index
    @bookings = Booking.where(user_id: current_user)
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
      flash[:alert] = "Votre réservation n'a pas pu être effectuée car il existe un conflit horaire avec une réservation existante"
    elsif (@booking.end_time < @booking.start_time) || (@booking.start_time < Time.now)
      flash[:alert] = "Votre réservation n'a pas pu être effectuée car les dates que vous avez indiquées ne sont pas valides"
    else
      if @booking.save
        flash[:notice] = 'Votre réservation a bien été créée'
      else
        flash[:alert] = "Votre réservation n'a pas pu être créée"
      end
    end
    redirect_to room_path(@room)
  end

  def update
    @room = @booking.room
    if @booking.update(booking_params)
      flash[:notice] = 'Votre réservation a bien été mise à jour'
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
