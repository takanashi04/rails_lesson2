class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end
  def create
    @room = Room.new(params.require(:room).permit(:name, :content, :price, :address))
    if @room.save
      flash[:notice] = "施設を新規登録しました"
      redirect_to :rooms
    else
      render "new"
    end
  end
  
  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end
  
  def destroy
  end
end
