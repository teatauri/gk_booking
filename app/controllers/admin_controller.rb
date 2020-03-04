class AdminController < ApplicationController

    def confirm_booking
        if !session[:admin_id]
            redirect_to login_path
        else
        @bookings = Booking.all
        @open_bookings = Booking.all.select{|b| b.status.state == "Pending"}
        end
    end

    def confirm_event
        if !session[:admin_id]
            redirect_to login_path
        else
            @booking = Booking.find(params[:id])
            @status = @booking.status
            @status.state = "Accepted"
            @status.save
            redirect_to upcoming_events_path
        end
    end

    def upcoming_events
        if !session[:admin_id]
            redirect_to login_path
        else
        @upcoming_bookings = Booking.all.select{|b| b.status.state == "Accepted"}
        end
    end

    def destroy_event
        event = Booking.find(params[:id])
        event.destroy
        redirect_to confirm_event_path
    end

end