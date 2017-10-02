class Student < ApplicationRecord
  has_many :items
  has_many :storages, through: :items
end
