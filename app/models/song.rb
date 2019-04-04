class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    binding.pry
    drake = Artist.find_by name: 'Drake'
    if drake != nil
      Song.all.map {|x| x.artist_id == drake.id}
    end
  end
end
