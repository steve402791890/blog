json.array!(@songs) do |song|
  json.extract! song, :id, :singername, :songtitle, :releaseyear, :albumtitle, :favorite, :songlength
  json.url song_url(song, format: :json)
end
