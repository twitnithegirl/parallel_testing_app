class CreateMalices < ActiveRecord::Migration[6.0]
  def change
    create_table :malices do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
