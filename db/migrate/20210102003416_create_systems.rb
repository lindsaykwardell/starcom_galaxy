class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :location, length: 4
      t.string :name
      t.text :description
      t.integer :credits_base
      t.integer :industry_base
      t.integer :research_base
      t.integer :credits_production, default: 0
      t.integer :industry_production, default: 0
      t.integer :research_production, default: 0
      t.references :empire, foreign_key: true, default: nil

      t.timestamps
    end
    add_index :systems, :location, unique: true
  end
end
