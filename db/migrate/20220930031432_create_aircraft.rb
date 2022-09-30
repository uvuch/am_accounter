# frozen_string_literal: true
class CreateAircraft < ActiveRecord::Migration[7.0]
  def change
    create_table :aircraft do |t|
      t.string :manufacturer, null: false
      t.string :model, limit: 32, null: false
      t.string :ac_number, limit: 10, null: false
      t.decimal :consumption, precision: 5, scale: 2, null: false
      t.integer :co2, limit: 2, null: false
      t.integer :distance, null: false
      t.integer :speed, null: false
      t.integer :rw_length, null: false
      t.integer :a_check_cost, null: false
      t.integer :a_check_hours, null: false
      t.integer :cost, null: false

      t.timestamps
    end
  end
end
