require 'pry'

class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @@all<< self
end

def self.all
  @@all
end



def artist
  @artist
end


def self.new_by_filename(file_name)
  a = file_name.split(" - ")
  new_instance = Song.new(a[1])
  new_instance.artist = Artist.find_or_create_by_name(a[0])
  new_instance

end
# binding.pry














end
