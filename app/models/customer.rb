class Customer < ActiveRecord::Base
  belongs_to :province
  validates :full_name, :image, presence: true
  def self.provinces_for_select
    provinces = all
    descriptions = [['All', 0]]
    provinces.each do |row|
      descriptions << [row.name,row.id]
    end
    descriptions
  end
end
