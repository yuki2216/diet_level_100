class AddInitialWeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :initial_weight, :string
  end
end
