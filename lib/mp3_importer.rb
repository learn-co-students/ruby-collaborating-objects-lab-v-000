require "pry"

class MP3Importer
  attr_reader :files, :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob(path+"/*.mp3").map do |file|
      file.gsub("./spec/fixtures/mp3s/", "")
  end
end

  def import
  end


end
