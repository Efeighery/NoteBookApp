json.extract! note, :id, :title, :creator, :content, :spare_space, :created_at, :updated_at
json.url note_url(note, format: :json)
