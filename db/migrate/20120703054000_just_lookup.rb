class JustLookup < ActiveRecord::Migration
  def up
    Item.where('id > 2').find_each do |t|
      say t.id
    end
  end

  def down
  end
end
