class Province < ActiveRecord::Base
  has_many :customers

  def self.provinces_for_select
    provinces = all
    descriptions = []
    provinces.each do |row|
      descriptions << [row.name,row.id]
    end
    descriptions
  end
end
