class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      flash[:notice] = "予約が完了しました！"
      redirect_to reservations_path
    else
      render 'new'
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
    @reservation = Reservation.new(reservation_params)
    render reservations_confirm_path
  end

  private

    # require(:reservation)を削除
    # モデル名が違う場合のcreateアクションは動作しない
    # そのため、reservation_newもしくはconfirmで対応する
    def reservation_params
      params.permit(
        :check_in_date,
        :check_out_date,
        :number_of_person
      )
    end
  
end
