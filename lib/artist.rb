require 'pry'

class Artist

attr_accessor :name, :songs, :song, :add_song


@@all = []

def initialize(name)
  @name = name
  @songs = []

end

def self.all
  @@all
end

def songs
  @songs
end


def add_song(song)
  @songs<< song
  song.artist = @name
end

def save
  @@all<< self
end



def self.find_or_create_by_name(name)
  self.all.each do |x|
    if x.name == name
      return x
    end
    end
    var = Artist.new(name)
    @@all<< var
    var
end
#

def print_songs
  # binding.pry
  self.songs.each {|x| puts x.name}

end






end
