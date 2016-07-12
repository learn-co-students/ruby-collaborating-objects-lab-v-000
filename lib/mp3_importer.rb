require 'pry'
class MP3Importer
  attr_accessor :path
@@songs = []

  def initialize(path)
    @path = path
    @files_array = []

  end

  def files
    @files_array = Dir.entries(@path)
    @files_array.shift
    @files_array.shift
    @files_array

  end

  def size 
    @files_array.count

  end

  def import
    self.files
    @files_array.each do |filename|
      
      @@songs << Song.new_by_filename(filename)

    end

  end
  
end