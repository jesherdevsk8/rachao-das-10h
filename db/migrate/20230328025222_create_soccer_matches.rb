class CreateSoccerMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :soccer_matches do |t|
      t.references :player, null: false, foreign_key: true
      t.datetime   :date
      t.text       :resume
      t.boolean    :victory
      t.boolean    :defeat
      t.boolean    :tied_score
      t.string     :match_score, default: ''

      t.timestamps
    end
  end
end
