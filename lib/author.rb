class Author

 attr_accessor :name, :post


 def initialize(name)
    @name = name
    @post
end

def posts
  Post.all
end

def add_post(post)
    post.author = self
end

def add_post_by_title(post_title)
  new_post = Post.new(post_title)
  new_post.author = self 
end

def self.post_count
  Post.all.count
end   

end