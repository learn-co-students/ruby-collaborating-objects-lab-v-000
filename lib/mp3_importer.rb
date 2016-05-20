class Mp3Importer
  attr_accessor :songs, :path

  def initialize(file_name)
    @songs = []
    @path = file_name
  end

  def files
    file_list = []
    if @path.match(/\.mp3\Z/)
      file_list << @path
    end
    file_list
  end

  def import(list_of_filenames)
    list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
  end
end
