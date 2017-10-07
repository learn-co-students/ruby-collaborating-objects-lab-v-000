class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir["#{self.path}/*.mp3"].each do |file_name|
      file_name.slice!("#{self.path}/")
      files << file_name
    end
    files
  end

  def import
    # Using data from files method convert array into separate string files
    # Iterate over array in files method
    self.files.collect do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
