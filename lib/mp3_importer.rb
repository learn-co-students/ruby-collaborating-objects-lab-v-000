require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).grep(/.mp3/)
    # only_mp3s = Dir["#{@path}/**/*.mp3"]
    # @@files = only_mp3s.to_s.gsub('"./spec/fixtures/mp3s/[', '')
  end
  
  def import
    files.each do |each_file|
      Song.new_by_filename(each_file)
    end
  end
  
end