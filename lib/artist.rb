require_relative 'Song.rb'
require_relative 'mp3_importer.rb'
class Artist

  @@all =[]

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@all << self
    @song = []
  end

  def self.all
    @@all
  end

  def songs
    @song
  end

  def add_song(song)
    @song << song
    song.artist = name
  end

  def find_or_create_by_name(name)
    found = false
    @all.each do |artist|
      if artist.name == name
        found = true
        return artist
      end
    end
    if found == false
      Artist.new(name)
    end
  end

  def save
    @@all << self
  end


end
