
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(path) do |file_name|
      if file_name[-4..-1] == ".mp3"
        @files << file_name
      end
    end
    @files

    # this is a more elegant solution:
    # @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files
    @files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end
