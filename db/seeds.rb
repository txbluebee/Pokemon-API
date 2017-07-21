class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pokemons
  end

  def generate_pokemons
    20.times do |i|
      pokemon = Monster.create!(
        name: Faker::Pokemon.name,
        location: Faker::Pokemon.location,
        move: Faker::Pokemon.move
      )
      puts "Pokemon #{i}: You can find #{pokemon.name} in #{pokemon.location}."
    end
  end
end

Seed.begin
