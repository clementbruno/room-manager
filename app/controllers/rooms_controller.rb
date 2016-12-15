class RoomsController < ApplicationController
  before_action :set_room, only: [ :show, :edit, :update ]
  #Afficher les rooms du user qui les a cree
  def index
    @rooms = Room.all
  end

  #
  def show
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
    params.require(:room).permit(:user_id, :name, :available, :sits)
  end
end
