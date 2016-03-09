require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir[path+"/*.mp3"]
    files.map do |info|
      set = info.split("mp3s/")
      set[1]
    end
  end

  def import

  end

end

# class MP3Importer
#   attr_accessor :path

#   def initialize(path)
#     @path = path
#   end

#   def files
#     files = Dir[path+"/*.mp3"]
#     files.collect do |info|
#       set = info.split("mp3s/")
#       set[1]
#     end
#   end

#   def import
#     Song.new_by_filename(self.files)
#   end

# end