module LifestylePostsHelper
  
  def embed(video)
    youtube_id = video.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end
  
end
