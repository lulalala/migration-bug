class AddModeToItems < ActiveRecord::Migration
  def change
    add_column :items, :mode, :string
  end
end
