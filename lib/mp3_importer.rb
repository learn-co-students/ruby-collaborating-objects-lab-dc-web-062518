require 'pry'
class MP3Importer


  attr_accessor :path, :song_name

  def initialize(path)
    @path = path
    @song_name = []
  end

  def files
    @files = Dir["#{path}/*"]
    @files.each do |x|
      x.slice!("./spec/fixtures/mp3s/")
    end
  end

  def import
    self.files.each do |filename|
      var = filename.split(" - ")
      Artist.find_or_create_by_name(var[0])
      song = Song.new(var[1])
      Artist.find_or_create_by_name(var[0]).add_song(song)
    end
  end

end
