module PostHelper
  
  def post_show_path (post)
    "#{root_url}posts/#{post.slug_title}"
  end
end
