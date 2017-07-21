class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :location
      t.string :move

      t.timestamps
    end
  end
end
