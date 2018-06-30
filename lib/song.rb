class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    var = file.split(" - ")
    new_song = self.new(var[1])
    new_song.artist = Artist.find_or_create_by_name(var[0])
    new_song.artist.songs << new_song
    new_song
  end

end
