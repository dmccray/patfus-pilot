class Organization < ActiveRecord::Base
  belongs_to :organization_type
  has_many :users
end
