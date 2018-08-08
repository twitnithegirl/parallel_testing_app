class CreateBoredoms < ActiveRecord::Migration[6.0]
  def change
    create_table :boredoms do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
