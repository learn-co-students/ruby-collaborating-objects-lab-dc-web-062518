require 'pry'

class MP3Importer

  attr_reader :path


  def initialize(folder_path)
    @path = folder_path
  end

  def files
    var = Dir["#{@path}/*"]
    var.map do |file_path|
      file_path.slice! "./spec/fixtures/mp3s/"
    end
    var
  end

  def import
    self.files.each do |file_path|
      Song.new_by_filename(file_path)
    end
  end

end
