require 'pry'

class MP3Importer

  attr_accessor :files, :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob(@path + "/" + "*.mp3")
      files.collect do |file|
      file.split("/mp3s/")[1]
    end
  end

  def import
     self.files
     files.collect do |file|
       Song.new_by_filename(file)
     end
   end
 end
