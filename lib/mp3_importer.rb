class MP3Importer

  attr_accessor :path, :files
  @path = []

  def initialize(path)
    @path = path
  end

  def files
      path = Dir["/./.mp3"]
      path.each do |file_name|
      file_name.gsub("/", "-")


    end
      # file_name = "/db/mp3s"
   end

  def import(file_name)
    import = Song.new_by_filename(file_name)
  end

end
