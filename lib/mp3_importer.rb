class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files                #  test path is ./spec/fixtures/mp3s
    Dir["#{@path}/*.mp3"].each {|filename| filename.slice!("#{@path}/")}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
end
