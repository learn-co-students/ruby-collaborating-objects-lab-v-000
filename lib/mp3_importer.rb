class MP3Importer

  attr_reader :files, :path

  def initialize(path)
    @path  = path
    @files = Dir["#{path}/*.mp3"].each {|file| file.slice!("./spec/fixtures/mp3s/")}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
