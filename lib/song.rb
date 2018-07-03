require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    var = filename.split(" - ")
    song = self.new(var[1])
    song.artist= Artist.find_or_create_by_name(var[0])
    song
  end

end
