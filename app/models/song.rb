class Song < ActiveRecord::Base
  def self.search(title, artist, album)
    if title || artist || album
      where('title LIKE ? AND artist LIKE ? AND album LIKE ?', "%#{title}%", "%#{artist}%", "%#{album}%")
    else
      all
    end
  end
end