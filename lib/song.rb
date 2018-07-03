class Song

  @@all = []
  attr_accessor :name, :artist, :file

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.new_by_filename(file)
    array = file.split(' - ')
    song = Song.new(array[1])
    song.artist= Artist.find_or_create_by_name(array[0])
    song
    # binding.pry
  end

  def self.all
    @@all
  end


end
