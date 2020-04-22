class AddClosedAtToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :closed_at, :datetime
  end
end
