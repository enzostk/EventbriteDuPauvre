class Attendance < ApplicationRecord

  validates :stripe_customer_id,
  presence: true,
  uniqueness: true
  
  # N - 1 association with guest (users)
  belongs_to :guest, class_name: 'User'
  # N - 1 association with events
  belongs_to :attended_event, class_name: 'Event'

end
