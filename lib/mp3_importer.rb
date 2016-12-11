class MP3Importer
  attr_accessor :path


  def initialize (file_path)
    @path = file_path
    @files = Dir["#{@path}**/*.mp3"]
  end

  def files
    @files.collect do |filename|
      name_array = filename.split("mp3s/").delete_at(1)
      name_array.to_s
    end
  end

  def import
    self.files.each do |filename|
      place = Song.new_by_filename(filename)
    end
  end

end
