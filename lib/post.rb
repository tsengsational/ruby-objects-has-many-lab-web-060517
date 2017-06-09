class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = "N/A"
  end

  def author_name
    if @author.class == Author
      @author.name
    else
      return nil
    end
  end

end
