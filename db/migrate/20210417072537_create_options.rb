class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :addoptions do |t|
      t.string :value
      t.references :poll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
