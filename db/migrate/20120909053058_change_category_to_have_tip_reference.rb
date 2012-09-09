class ChangeCategoryToHaveTipReference < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.references :tip

      t.timestamps
    end
  end

  def down
  end
end
