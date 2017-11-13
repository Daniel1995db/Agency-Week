class Discount < ApplicationRecord
  belongs_to :restaurant
  after_validation :set_ended_at

  def self.live
    where('ended_at > ? AND created_at < ?', Time.now.gmtime, Time.now.gmtime)
  end

  protected
  	def set_ended_at 
  		self.ended_at = Time.now.gmtime + time_frame.to_i.minutes
  	end 
end
