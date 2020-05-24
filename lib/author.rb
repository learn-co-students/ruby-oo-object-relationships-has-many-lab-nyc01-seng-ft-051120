class Author
    @@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
    end
    def posts
        Post.all
    end
    def add_post(post)
        added=0
        Post.all.each do |posts|
            if posts==posts
                posts.author=self
                added=1
            end
        end
        if added==0
            Post.all << post
            post.author=self
        end

                
    end
    def add_post_by_title(title)
        post=Post.new(title)
        post.author=self
    end
    def self.post_count
        count=0
        Post.all.each do |posts|
            if posts.author
                count +=1
            end
        end
        count
    end
    

end
