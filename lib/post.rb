class Post
    attr_accessor :title, :author, :author_name
   @@all = []
    def initialize(title)
        @title = title 
        @@all << self
    end

    def self.all 
        @@all
    end 

    def title
        @title
    end

    def author_name
        if @author != nil
        @author.name 
        end 
    end

end