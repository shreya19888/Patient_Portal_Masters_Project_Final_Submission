class CreateCustomVitals < ActiveRecord::Migration
  def change
    create_table :custom_vitals do |t|
      t.string :name
      t.integer :value
      t.datetime :date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
