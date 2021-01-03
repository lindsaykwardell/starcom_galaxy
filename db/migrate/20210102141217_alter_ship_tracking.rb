class AlterShipTracking < ActiveRecord::Migration[6.1]
  def change
    remove_column :systems, :ship_scout_count
  end
end
