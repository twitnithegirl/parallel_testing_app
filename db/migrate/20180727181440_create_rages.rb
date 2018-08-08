class CreateRages < ActiveRecord::Migration[6.0]
  def change
    create_table :rages do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
