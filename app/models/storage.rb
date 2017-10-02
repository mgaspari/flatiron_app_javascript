class Storage < ApplicationRecord
  belongs_to :kitchen
  has_many :items
  has_many :students, through: :items

  enum storage_type: { freezer: 1, cabinets: 2, fridge: 3}
end
