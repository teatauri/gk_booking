class BookingsController < ApplicationController
  before_action :set_booking, only: [:update, :destroy]
  # before_action :booking_params, only: [:create]


  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @status = Status.create(state: "pending")
    @booking.status = @status 
      if @booking.save
        flash[:success] = "Booking request was successfully created!"
        redirect_to bookings_submitted_path
      else
        flash[:error] = @booking.errors.full_messages
        render 'new'
      end
  end

  def update
  end

  def destroy
    @booking.destroy
  end

  def submitted 
  end 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :status_id, :location, :budget, :guests, :name, :email)
    end
end

