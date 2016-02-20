require 'pry'

class MP3Importer
  #attr_accessor :File.join(File.dirname(__FILE__), *%w[rel path here])
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(self.path).delete_if{|i| i.end_with?("mp3") == false}
    
  end

  def import
    self.files.each do |file|
      data = file.split(" - ")
      artist = Artist.find_or_create_by_name(data[0])
      song = Song.new_by_filename(data[1])
      artist.songs(song)
    end
  end
end




#------------(what I had before help returned and array of *)
  # def files
    # file_names = []
    # files = Dir["#{self.path}/**/*.mp3"]
    # files.each do |file|
    #   file_names << file = File.basename('#{self.path}/**/*')
    # end
    # file_names
  # end  
#-------------