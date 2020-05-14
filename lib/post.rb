class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def save
        Post.all << self
    end

    def author_name
        if defined?(self.author.name) == nil
            return nil
        else
            self.author.name
        end
    end
   
end