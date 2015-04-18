class User < ActiveRecord::Base

  ALL_USERS = :id, :address, :lat, :lng, :category

  scope :all_users, -> { select(ALL_USERS) }

  def self.send_newsletters
  end
end
