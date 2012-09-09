class ChangeTipTableToHaveReferenceOfCategory < ActiveRecord::Migration

  def change
    create_table :targets do |t|
      t.string :title
      t.text :content
      t.string :author
      t.references :category

      t.timestamps
    end
  end

  def down
  end
end
