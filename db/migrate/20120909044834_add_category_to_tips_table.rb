class AddCategoryToTipsTable < ActiveRecord::Migration
  def change
    add_column :tips, :category_id, :integer
  end
end
