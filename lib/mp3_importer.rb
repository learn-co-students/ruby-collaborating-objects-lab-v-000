require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    all_file_paths = Dir["#{path}/**/*.mp3"]
    normalized_files = []
    all_file_paths.each do |file_path|
      normalized_files << file_path.split("/")[4]
    end
    normalized_files
    #binding.pry
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
    #binding.pry
  end

end
