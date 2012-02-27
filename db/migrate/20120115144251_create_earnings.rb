class CreateEarnings < ActiveRecord::Migration
  def change
    create_table :earnings do |t|
      t.string :name
      t.string :description
      t.float :value
      t.datetime :date

      t.timestamps
    end
  end
end
