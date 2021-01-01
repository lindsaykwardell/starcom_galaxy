class CreateEmpires < ActiveRecord::Migration[6.1]
  def change
    create_table :empires do |t|
      t.string :empire_name
      t.text :description
      t.integer :credits
      t.integer :industry
      t.integer :research
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
