class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
     @path = path

  end

  def files
    files = Dir.entries(@path)
    files.delete_if { |item| !item.end_with?('.mp3') }
  end

  def import
    files.each do |file_name|
       Song.new_by_filename(file_name)
     end
  end
end
