class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string  :name, null: false
      t.string  :nickname
      t.string  :email, null: false
      t.date    :birthdate
      t.integer :shirt_number
      t.boolean :active, default: true
      t.integer :goal

      t.timestamps
    end
  end
end
