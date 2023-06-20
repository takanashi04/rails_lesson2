class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.new
  end

  def create
    @rooms = Room.new(params.require(:room).permit(:room_name, :room_content, :room_price, :address))
    if @rooms.save
      flash[:notice] = "施設を新規登録しました"
      redirect_to :rooms
    else
      render "new"
    end
  end
  
  def show
  end

  def edit
  end

  def update
  end
  
  def destroy
  end
end
