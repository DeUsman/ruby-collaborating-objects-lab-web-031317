class Song
attr_accessor :name, :artist 

def initialize(song)
  @name = song
end

def self.new_by_filename(file)
  new_artist = file.split("-")[0].strip
  new_name = file.split("-")[1].strip
  new_song = Song.new(new_name)
  new_song.artist = Artist.find_or_create_by_name(new_artist)
  new_song.artist.add_song(new_song)
  return new_song
end

end
