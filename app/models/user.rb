class User < ActiveRecord::Base

  has_and_belongs_to_many :projects

  geocoded_by :address, :latitude  => :lat, :longitude => :lng

  validates :email, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates_presence_of :lat
  validates_presence_of :lng
  before_validation :geocode

  ALL_USERS = :id, :email, :address, :lat, :lng, :category, :price_paid

  scope :all_users, -> { select(ALL_USERS) }


  def self.send_newsletters
  end
end
