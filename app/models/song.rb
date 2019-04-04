class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def self.drake_made_this
    drake = Artist.find_or_create_by(name: "Drake")
      self.all.collect do |x|
          if x.artist == drake then x end
      end
  end

end
