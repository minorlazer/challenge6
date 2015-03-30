class Customer < ActiveRecord::Base
  validates :full_name, :image, presence: true
end
