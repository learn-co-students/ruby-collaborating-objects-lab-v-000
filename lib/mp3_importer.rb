class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    files
  end

  def files
    new_array = []
    Dir.entries(@path).each do |entry|
      if entry.include?("mp3")
        new_array << entry
      end
    end
    new_array
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end



#  class Mp3Importer
#    attr_accessor :songs 
#    def import(list_of_filenames)
#      list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
 #   end
#  end