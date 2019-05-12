class CreateReciepes < ActiveRecord::Migration[5.2]
  def change
    create_table :reciepes do |t|
      t.string :title
      t.string :description
      t.string :madeMy

      t.timestamps
    end
  end
end
