class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :title
      t.text :about
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
