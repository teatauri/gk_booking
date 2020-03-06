class Booking < ApplicationRecord
  has_many :booking_items 
  belongs_to :status
  validates :budget, presence: true
  validates :guests, presence: true
  validates :location, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  validate :end_date_is_after_start_date
  
  
  private
  
  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
  
    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date") 
    end  
    
    if start_date < Time.now
      errors.add(:start_date, "must be in the future")
    end 
  end
   
end
