class MP3Importer
 attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir[path+"/**/*.mp3"].collect{|e| e.split("/").last}
  end
  def import
    Artist.clear_list
    #binding.pry
    self.files.each{|e|
      Song.new_by_filename(e)
    }
  end
end
