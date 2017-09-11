class MP3Importer

  attr_accessor :path, :list_of_filenames

  def initialize(path)
    @path = path
  end

  def files
    @list_of_filenames = Dir["#{@path}/*.mp3"]
    @list_of_filenames.each do |filename|
      filename.slice!("#{@path}/")
    end
    @list_of_filenames
  end

  def import
    files
    @list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
