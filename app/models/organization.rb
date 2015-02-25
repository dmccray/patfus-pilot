class Organization < ActiveRecord::Base
  has_one :organization_type
  has_many :users
end
