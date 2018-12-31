class MP3Importer
  attr_accessor :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    path = @path + '/*.mp3'
    file_list = Dir[path]
    file_list.each do |file|
      parts = file.split('/')
      file_name = parts[-1]
      @@all << file_name
    end
    @@all
  end

  def import
    @@all.collect do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end
