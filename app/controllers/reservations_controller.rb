class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    binding.pry
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      flash[:notice] = "予約が完了しました！"
      redirect_to reservations_path
    else
      render "new"
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
  end

  private

  binding.pry
    def reservation_params
      params.require(:reservation).permit(
        :check_in_date,
        :check_out_date,
        :number_of_person
      )
    end
  
end
