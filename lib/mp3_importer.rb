require 'pry'

class MP3Importer

attr_accessor :path

@@all= []


def initialize(path)
  @path = path
end


def path
  @path
end


def files
  Dir[@path+"/*"].map do |file|
    file.slice!("./spec/fixtures/mp3s/")
    file
  end

end


def import
  self.files.each do |file_name|
    b = file_name.split(" - ")
    artist =Artist.find_or_create_by_name(b[0])
    song = Song.new(b[1])
    artist.add_song(song)
  end


end

















end
