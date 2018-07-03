require_relative 'Song.rb'
require_relative 'mp3_importer.rb'
require 'pry'
class Artist

  @@all =[]

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = name
  end

  def self.find_or_create_by_name(name)
    found = false
    @@all.each do |artist|
      if artist.name == name
        found = true
        return artist
      end
    end
    if found == false
      artist = Artist.new(name)
    end
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.map do |song|
      puts song.name
    end

  end


end
