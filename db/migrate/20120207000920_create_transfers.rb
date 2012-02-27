class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :donor_id
      t.integer :recipient_id
      t.float :value

      t.timestamps
    end
  end
end
