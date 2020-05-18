require "pry"

class Song
    attr_accessor :artist, :title

    @@all= []

    def initialize(artist, title)
        @artist = artist
        @title = title
        @@all << self
    end 

    def self.all
        @@all
    end 

    def artist_name
        artist.name if artist
      end
    # The #add_song_by_name method should take in an argument of a name 
    # (or title), use that argument to create a new song (or post) and 
    # then associate the objects.
end 


# binding.pry