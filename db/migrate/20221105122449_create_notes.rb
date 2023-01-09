class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :creator
      t.text :content
      t.text :spare_space

      t.timestamps
    end
  end
end
