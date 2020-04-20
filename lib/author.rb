class Author 
attr_accessor :name
@@all=[]

  def initialize(name)
  @name = name 
  end
  
  def posts 
    Post.all.select do |post|
      post.author==self 
    end
  end 
  
  
  def add_post(post)
    post.author=self 
  end
  
  def add_post_by_title(title)
    post_=Post.new(title)
    add_post(post_)
  end
  
  def self.post_count  
    Post.all.count 
  end
  
  
end 