class MP3Importer

  @@songs =[]

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
#   Dir.entries("./spec/fixtures/mp3s")
    Dir.glob("./spec/fixtures/mp3s/*").map do |path|
      path.gsub(/\.\/spec\/fixtures\/mp3s\//, '')
    end
  end

  def import
    files.each do |file|
      @@songs << Song.new_by_filename(file)
    end
    @@songs
  end

end
