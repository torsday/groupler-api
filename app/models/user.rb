class User < ActiveRecord::Base

  ALL_USERS = :id, :email, :address, :lat, :lng, :category, :price_paid

  scope :all_users, -> { select(ALL_USERS) }

  def self.send_newsletters
  end
end
