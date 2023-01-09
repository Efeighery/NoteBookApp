class CreateArchives < ActiveRecord::Migration[7.0]
  def change
    create_table :archives do |t|
      t.string :full_name
      t.string :note_title
      t.text :note_space

      t.timestamps
    end
  end
end
