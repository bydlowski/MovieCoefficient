class AddHideToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hidesearch, :boolean, default: false
    add_column :users, :hidecoef, :boolean, default: false
  end
end
