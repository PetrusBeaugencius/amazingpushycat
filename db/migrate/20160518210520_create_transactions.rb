class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :source_id, index: true, foreign_key: true, references: :accounts
      t.integer :destination_id, index: true, foreign_key: true, references: :accounts
      t.float :amount
      t.text :comment

      t.timestamps null: false
    end
  end
end
