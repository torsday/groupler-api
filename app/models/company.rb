class Company < ActiveRecord::Base
  has_many :bids
  has_many :projects, :through => :bids
end
