class CreateFelicities < ActiveRecord::Migration[6.0]
  def change
    create_table :felicities do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
