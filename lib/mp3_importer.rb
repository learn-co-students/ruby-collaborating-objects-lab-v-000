require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    # get an array of all the mp3 files at that path, then removing the path from each item
    files_with_path = Dir["#{path}/*.mp3"]
    @files = files_with_path.collect do |file_with_path|
      file_with_path.gsub("#{@path}/", "")
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
      puts "file: #{file}"
    end
  end
end
