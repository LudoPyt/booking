class AddReasontoMeets < ActiveRecord::Migration[5.2]
  def change
    add_column :meets, :reason, :string
  end
end
