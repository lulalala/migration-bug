class FillModes < ActiveRecord::Migration
  def up
    modes = {0 => 'A', 1 => 'B', 2 => 'C', 3 => 'D', 4 => 'E',
             5 => 'F', 6 => 'G', 7 => 'H'}
    say_with_time 'Move mode to qualifier' do
      bar = ProgressBar.new(Item.count)
      Item.find_each do |item|
        item.mode = modes[item.id % 8]
        item.save
        bar.increment!
      end
    end
  end

  def down
  end
end
