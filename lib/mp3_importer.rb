#class MP3Importer

class MP3Importer

#initialize with Path, therefore incude attr_accessor

  attr_accessor :path

  def initialize(path)
    @path = path
  end

#method files, loads files into a director

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
  end

#method import loads files into library

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
