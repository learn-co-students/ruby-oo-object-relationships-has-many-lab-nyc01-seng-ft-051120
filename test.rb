require './lib/author.rb'
require './lib/post.rb'
require 'pry'


betty = Author.new("Betty")
post = Post.new("My Post")
post.author = betty



binding.pry