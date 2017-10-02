class Kitchen < ApplicationRecord
  belongs_to :school
  has_many :storages
  has_many :kegs
  has_many :items, through: :storages
  has_many :students, through: :items
end
