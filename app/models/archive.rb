class Archive < ApplicationRecord
    validates_presence_of :note_title
    has_rich_text :note_space
end
