require 'pry'
class MP3Importer
  attr_accessor :path, :name, :artist

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    list = Dir.glob(@path+"/*")
    list.each do |filename|
      newfile = File.basename(filename)
      if newfile.include?(".mp3")
        @files << newfile
      end
    end
    @files
  end

  def import
    self.files
    @files.collect do |file|
      new_song = Song.new_by_filename(file)
    end
  end


end
