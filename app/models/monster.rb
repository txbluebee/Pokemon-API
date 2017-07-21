class Monster < ApplicationRecord
  validates_presence_of :name, :location, :move

  scope :search, -> (keyword){ where("name like ?", "%#{keyword}%") }
  scope :random_pokemon, -> { order("RANDOM()").first}
end
