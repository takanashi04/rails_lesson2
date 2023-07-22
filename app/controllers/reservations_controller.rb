class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @rooms = Room.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @room = Room.find(params[:id])

    if @reservation.save
      flash[:notice] = "予約が完了しました！"
      redirect_to reservations_path
    else
      render 'confirm'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirm
    binding.pry
    @room = Room.find(params[:reservation][:room_id])
    @reservation = Reservation.new(reservation_params)

    render 'confirm'
  end

  private

    def reservation_params
      params.require(:reservation).permit(
        :check_in_date,
        :check_out_date,
        :number_of_person
      )
    end

end
