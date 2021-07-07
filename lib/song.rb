require 'pry'

class Song
    attr_accessor :name, :artist
  
    @@all = []
    
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end
    
    def save 
       Song.all << self 
    end

    def artist_name
        if defined?(self.artist.name) == nil
            return nil
        else
            self.artist.name
        end
    end

end
