require 'pry'
class MP3Importer

  attr_accessor :path, :file

  def initialize (path)
    @path = path
    @files = []
     #binding.pry
  end

  def files
    @files = []
    arr = []
    arr = Dir[@path + '/*']
    arr.each do |f|
      @files << f.split('/')[-1]
    end
    @files
  end

  def import
    self.files.each do |file|
      f = (file.split(' - '))[1]
      artist = Artist.find_or_create_by_name((file.split(' - '))[0])
        song = Song.new(f)
        artist.add_song(song)
    end
  end

end
