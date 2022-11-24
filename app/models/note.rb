class Note < ApplicationRecord
    validates_presence_of :title
    has_rich_text :spare

    def self.search(search)
        if search
            note_list = Note.find_by(title:search)
            if note_list
                self.where(note_id: note_list)
            else
                @notes = Note.all
            end
        else
            @notes = Note.all
        end
    end
end
