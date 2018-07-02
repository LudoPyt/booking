class AddColumnstoMeets < ActiveRecord::Migration[5.2]
  def change
    add_column :meets, :first_name, :string
    add_column :meets, :last_name, :string
  end
end
