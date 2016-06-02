class AddCoeficientToUsers < ActiveRecord::Migration
  def change
    add_column :users, :coeficient, :text, default: "0"
  end
end
