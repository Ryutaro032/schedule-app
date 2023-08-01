class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :start_day
      t.datetime :end_day
      t.string :all_day
      t.string :memo

      t.timestamps
    end
  end
end
