class User < ActiveRecord::Base
  geocoded_by :address, :latitude  => :lat, :longitude => :lng

  validates :email, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  after_validation :geocode

  ALL_USERS = :id, :email, :address, :lat, :lng, :category, :price_paid

  scope :all_users, -> { select(ALL_USERS) }


  def self.send_newsletters
  end
end
