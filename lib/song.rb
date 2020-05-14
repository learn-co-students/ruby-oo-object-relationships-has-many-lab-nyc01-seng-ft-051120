class Song 
    attr_accessor :artist
    attr_reader :name
    @@all =[]
    def initialize(name)
        @name = name
        save
    end

    def save 
        Song.all << self
    end

    def artist_name
        if artist
            artist.name
        end
    end

    def self.all 
        @@all
    end

end