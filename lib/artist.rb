class Artist
 
    attr_accessor :name, :song

  def initialize(name)
    @name = name  
    @song
  end 

  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self 
  end

  def self.song_count 
    Song.all.count 
  end 

end