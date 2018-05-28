class MP3Importer

  attr_accessor :path, :files


  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir["#{@path}/**/*.mp3"]
    @files.each do |fullname|
      fullname.slice! "./spec/fixtures/mp3s/"

    end

  end

  def import

    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end


end
