class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :bank_id
      t.string :image

      t.timestamps
    end
  end
end
