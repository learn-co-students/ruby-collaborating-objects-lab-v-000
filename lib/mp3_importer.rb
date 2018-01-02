class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end
  def files#files
    i=0
    files = Dir["#{@path}**/*.mp3"]
    while i<files.size do
      files[i] = files[i].split("/").last
      i+=1
    end
    files
  end

  def import#import
      files.each do |filename|
         Song.new_by_filename(filename)
       end
  end
end
