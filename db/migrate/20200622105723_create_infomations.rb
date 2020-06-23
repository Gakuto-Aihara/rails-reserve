class CreateInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :infomations do |t|
      t.string :info
      t.string :about
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
