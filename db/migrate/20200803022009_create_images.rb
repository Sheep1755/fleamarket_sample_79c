class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.references :post, type: :bigint, foreign_key: true
      t.timestamps
    end
  end
end
