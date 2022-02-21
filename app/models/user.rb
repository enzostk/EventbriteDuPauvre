class User < ApplicationRecord
 
  has_many :hosted_events, class_name: 'Event', foreign_key: 'host_id'
  has_many :attendances, foreign_key: 'guest_id'
  has_many :attended_events, through: :attendances, source: :attended_event
  
end
