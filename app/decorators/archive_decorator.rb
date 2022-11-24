class ArchiveDecorator < Draper::Decorator
  delegate_all

  def archive_entry
    object.full_name +' '+object.note_title + ' ' + object.content_box
  end

end
