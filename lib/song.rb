class Song

  @@all = []
  attr_accessor :name, :artist, :file

  def initialize (name)
    @name = name
    @file = file
    @@all << self
  end

  def self.new_by_filename(file)
    Song.new(file)
  end

  def self.all
    @@all
  end


end
