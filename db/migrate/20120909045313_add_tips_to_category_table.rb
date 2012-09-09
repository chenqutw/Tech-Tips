class AddTipsToCategoryTable < ActiveRecord::Migration
  def change
    add_column :categories, :tip_id, :integer
  end
end
