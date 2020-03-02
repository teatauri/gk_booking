json.extract! booking, :id, :admin_id, :start_date, :end_date, :description, :budget, :guests, :email, :phone_number, :created_at, :updated_at
json.url booking_url(booking, format: :json)
