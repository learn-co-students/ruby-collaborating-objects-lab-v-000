#The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class
# You should write code that responds to MP3Importer.new('./db/mp3s').import
require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
  end

  def files
    @files = Dir.glob(("#{@path}/**/*.mp3"))
    @files.collect {|f| File.basename(f)}
  end

  def import
    files.each { |file| Song.new_by_filename(file)}
  end
end
