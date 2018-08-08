class CreateJoys < ActiveRecord::Migration[6.0]
  def change
    create_table :joys do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
