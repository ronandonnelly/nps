class Person < ApplicationRecord
  belongs_to :project
  has_many :ratings, dependent: :destroy

  def send_nps_email
    PersonMailer.nps(self).deliver_later 
  end 
end
