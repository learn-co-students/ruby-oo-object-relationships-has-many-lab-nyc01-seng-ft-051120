class Artist
    @@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
        
    end
    def songs
        Song.all
    end
    def add_song(song)
        Song.all << song
        song.artist=self
    end
    def add_song_by_name(song_name)
        Song.new(song_name).artist=self
    end
    def self.song_count
        count=-1
        Song.all.each do |songs|
            if songs.artist
                count +=1
            end
        end
        count
    end

end