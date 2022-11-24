class AddNoteTitleToArchives < ActiveRecord::Migration[7.0]
  def change
    add_column :archives, :note_title, :string
  end
end
