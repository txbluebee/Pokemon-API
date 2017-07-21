class Monster < ApplicationRecord
  validates_presence_of :name, :location, :move
end
