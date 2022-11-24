class CreateArchives < ActiveRecord::Migration[7.0]
  def change
    create_table :archives do |t|
      t.string :first_name
      t.string :last_name
      t.text :note_space

      t.timestamps
    end
  end
end
