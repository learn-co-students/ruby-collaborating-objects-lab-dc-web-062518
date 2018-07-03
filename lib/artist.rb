require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = @name
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.each do |names|
      if names.name.include?(name)
        return names
      end
    end
      new_var = Artist.new(name)
      @@all << new_var
      new_var

  end

  def print_songs
    self.songs.each do |x|
      puts x.name
    end
  end

end
