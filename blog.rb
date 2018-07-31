



class Blog
  @@blog_array = []
  @@total_blog = 0

  def Blog.all
    @@blog_array
  end

  def Blog.add(thing)
    @@blog_array << thing
    @@total_blog += 1
  end

  def Blog.publish
    @@blog_array.each do |blogpost|
      puts "#{blogpost.get_title}"
      puts "#{blogpost.get_content}"
      puts "#{blogpost.get_date}"
      puts "#{blogpost.get_author}"
    end
  end

end

class BlogPost < Blog

  def BlogPost.create
    blogpost = new
    puts "What is your blog title?"
    blogpost.set_title = gets.chomp
    puts "Who is the author of this post?"
    blogpost.set_author = gets.chomp
    puts "What date is this being published?"
    blogpost.set_pubdate = gets.chomp
    puts "Put your content here:"
    blogpost.set_content = gets.chomp
    blogpost.save
    puts "Do you want to write a new blog post? Y/N"
    create if gets.chomp.downcase == 'y'

  end

  def set_title=(blog_title)
    @title = blog_title
  end

  def get_title
    return @title
  end

  def set_content=(blog_content)
    @content = blog_content
  end

  def get_content
    return @content
  end

  def set_pubdate=(blog_date)
    @blog_date = blog_date
  end

  def get_date
    return @blog_date
  end

  def set_author=(blog_author)
    @author = blog_author
  end

  def get_author
    return @author
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
blog_array = BlogPost.all
puts blog_array.inspect
BlogPost.publish
