
class MP3Importer
  attr_accessor :path
  attr_reader :files
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    # "./db/mp3s/*.mp3" - path for all files
    results = Dir.glob("#{self.path}/*.mp3")

    # .delete_prefix("./db/mp3s/") - better way but I'm not risking updating from 2.3.1 to 2.5.x in the browser IDE
    @files = results.collect{ |filename| filename.sub('./spec/fixtures/mp3s/', '') }
  end

  def import
    self.files.each { |file_name| Song.new_by_filename(file_name) }
  end

end

