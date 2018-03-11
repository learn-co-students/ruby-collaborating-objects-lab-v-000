#require 'pry'
class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    @path = path
    @filenames = []
  end

 def files
   Dir.glob(path + "/*.mp3").each do |filename|
     name = File.basename(filename)
      self.filenames << "#{name}"
      end
      self.filenames
    end

 def import
   files.each { |filename| Song.new_by_filename(filename) }
   #binding.pry
 end

end
