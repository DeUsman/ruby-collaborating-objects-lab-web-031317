class Artist 
attr_accessor :name, :songs
@@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 

  def add_song(song)
    @songs.push(song)
  end 

  def save
    @@all.push(self)
  end

  def self.all
    @@all 
  end

  def self.find_or_create_by_name(artist_name)
    self.all.each do |instance|
      if (instance.name == artist_name)
          return instance
      end
    end
       self.new(artist_name)
  end 

   def print_songs
     self.songs.each do |song| puts song.name end
   end
end