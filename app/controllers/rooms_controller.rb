class RoomsController < ApplicationController
  before_action :set_room, only: [ :show, :edit, :update ]

  def index
    @all_rooms = Room.all
    @rooms = @all_rooms.paginate(:page => params[:page], :per_page => 12).order('sits DESC')

    # @rooms.each do |room|
    #   if room.sits >= params[:sits].to_i
    #     @rooms_filtered << room
    #   elsif params[:sits].empty? || params[:sits].nil?
    #     @rooms_filtered = @rooms
    #   end
    # end

    bookings = Booking.all
    bookings_filtered = []
    if !params[:start_time].nil? || !params[:end_time].nil?
      bookings.each do |booking|
        #Ici on check pour verifier que l'intervalle de temps de reservation souhaite n'est pas en conflit avec une reservation existante portant le meme room_id
        if (params[:start_time].to_time - booking.end_time) * (booking.start_time - params[:end_time].to_time) >= 0
        bookings_filtered << booking
        end
      end
      @rooms_filtered = @rooms.to_a
      bookings_filtered.each do |booking|
        @rooms_filtered.reject! { |room| room == booking.room }
      end
    else
      @rooms_filtered = @rooms
    end

    @room = Room.new
  end

  def show
    @booking = Booking.new
    @room_bookings = Booking.where(room_id: params[:id])
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      flash[:notice] = 'Your room was successfully created'
      redirect_to room_path(@room)
    else
      render :new
    end

  end

  def update
    if @room.update(room_params)
      flash[:notice] = 'Your room was successfully updated'
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:user_id, :name, :available, :sits, :photo, :description, :catering, :handicap)
  end
end
