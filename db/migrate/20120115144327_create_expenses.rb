class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :description
      t.float :value
      t.datetime :date
      t.integer :account_id

      t.timestamps
    end
  end
end
