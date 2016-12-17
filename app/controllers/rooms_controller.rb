class RoomsController < ApplicationController
  before_action :set_room, only: [ :show, :edit, :update ]

  def index
    @all_rooms = Room.all
    @rooms = @all_rooms.paginate(:page => params[:page], :per_page => 12).order('sits DESC')

    #Mise en place des filtres
    bookings = Booking.all
    bookings_filtered = []
    if (!params[:start_time].nil? && !params[:start_time].empty?) || (!params[:end_time].nil? && !params[:end_time].empty?)
      bookings.each do |booking|
        #Ici on check pour verifier que l'intervalle de temps de reservation souhaite n'est pas en conflit avec une reservation existante
        #Les 3600 qui figurent dans chaque element du produit visent à neutraliser la différence liée au fuseau horaire de l'index qui est different de celui de simple form lors de la création du booking
        if (params[:start_time].to_time - booking.end_time + 3600) * (booking.start_time - params[:end_time].to_time - 3600) >= 0
          bookings_filtered << booking
        end
      end
      @rooms_filtered = @rooms.to_a
      bookings_filtered.each do |booking|
        @rooms_filtered.reject! { |room| room == booking.room }
      end
      if !params[:sits].nil?
        @rooms_filtered.reject! { |room| room.sits < params[:sits].to_i }
      end
    else
      @rooms_filtered = @rooms.to_a
      if !params[:sits].nil?
        @rooms_filtered.reject! { |room| room.sits < params[:sits].to_i }
      end
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
