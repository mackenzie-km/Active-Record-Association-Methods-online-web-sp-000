class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    binding.pry
    drake = Artist.find_by name: 'Drake'
    if drake
        Song.all.map do |x|
        if x.artist_id == drake.id
          x
        end
      end
    end 
  end
end
