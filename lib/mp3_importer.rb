class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    # Dir.entries(@path)
    songs_names = Dir.glob("#{@path}/*.mp3")
    songs_names.collect do |songs_name| songs_name.gsub("#{@path}/", "" )
    end
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end