require 'pry'

class MP3Importer
  attr_accessor :path, :files, :size

  def import
    files.each{|file_name| Song.new_by_filename(file_name)}
  end

  def initialize(file_directory)
    @path = file_directory
  end

  def files
    @files = Dir["#{@path}/*"].collect{|song_file| song_file.split("/")[4]}
  end

end

#Dir["#{file_directory}/*"]
#list_of_filenames = Dir[list_of_filenames*]

#Dir["#{@path}/*"][0].split("/")
