class Attendance < ApplicationRecord

  validates :stripe_customer_id,
  presence: true,
  uniqueness: true
  belongs_to :user
  belongs_to :event

  after_create :join_event

  def join_event
    AttendanceMailer.user_join_event(self).deliver_now
  end


end
