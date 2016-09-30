class Song

  attr_accessor :name , :artist , :genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@genres << @genre
    @@artists << @artist

  end

  # def fill_global_var(container, addition)
  #
  #   if container.has_value?(addition)
  #     container[addition] += 1 if container.is_a? Hash
  #   else
  #     container << addition if container.is_a? Array
  #     container[addition] => 1 if container.is_a? Hash
  #   end
  #
  # end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre_entry, genre_hash|
      if genre_hash.has_key?(genre_entry)
        genre_hash[genre_entry] += 1
      else
        genre_hash[genre_entry] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist_entry, artist_hash|
      if artist_hash.has_key?(artist_entry)
        artist_hash[artist_entry] += 1
      else
        artist_hash[artist_entry] = 1
      end
    end
  end

end
