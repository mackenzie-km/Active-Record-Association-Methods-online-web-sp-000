class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake_id = (Artist.find_by name: "Drake").id
    Song.all.map do {|x| x.artist_id == drake_id}
  end
end
