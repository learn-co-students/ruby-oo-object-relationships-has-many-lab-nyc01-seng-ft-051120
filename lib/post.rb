require "pry"

class Post
    attr_accessor :author 

    @@all = []

    def initialize(author)
        @author = author
        @@all << self
    end 

    def self.all
        @@all
    end 

    def author_name
        author.name if author
      end

end 