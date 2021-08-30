class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def get_genre_of_first_song
    self.songs.first
  end

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.map do |artist|
      artist.name
  end

  # def all_artist_names
  #   self.artists.pluck(:name)
  # end
  end
end
