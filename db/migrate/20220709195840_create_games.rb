class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.boolean :win, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
