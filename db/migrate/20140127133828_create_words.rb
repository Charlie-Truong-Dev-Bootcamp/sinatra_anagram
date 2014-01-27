class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.integer :length
      t.timestamps
    end

    add_index :words, :word

    add_index :words, :length
  end
end
