class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    Song.find_by artist_id: (Artist.find_by name: "Drake").id
  end
end
