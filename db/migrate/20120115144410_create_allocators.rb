class CreateAllocators < ActiveRecord::Migration
  def change
    create_table :allocators do |t|
      t.integer :account_id
      t.integer :percentage

      t.timestamps
    end
  end
end
