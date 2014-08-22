class RemoveColumnFromTextShouts < ActiveRecord::Migration
  def up
    remove_column :text_shouts, :created_at, :datetime
    remove_column :text_shouts, :updated_at, :datetime
  end

  def down
    add_column :text_shouts, :created_at, :datetime
    add_column :text_shouts, :updated_at, :datetime
  end
end
