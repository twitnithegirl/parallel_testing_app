class CreateFuns < ActiveRecord::Migration[6.0]
  def change
    create_table :funs do |t|
      t.string :name
      t.string :activity

      t.timestamps
    end
  end
end
