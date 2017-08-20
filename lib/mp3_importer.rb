class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = self.files
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.collect {|filename| filename.sub!("#{path}/", "")}
  end


  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
