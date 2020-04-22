class AddSpecializationsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :specializations, :string
  end
end
