class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    Dir.new(@path)
  end

  def import(list_of_filenames)
    list_of_filenames.each do |filename|
      Song.new_by_filename(filename)
    end 
  end
end

#Dir.new(@path).reject {|s| s == '.' || s== ".."}