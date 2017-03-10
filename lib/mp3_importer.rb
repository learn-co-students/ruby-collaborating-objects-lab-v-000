class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files  #glob( pattern, [flags] ) {| filename | block } → nil https://ruby-doc.org/core-1.9.3/Dir.html
      Dir.glob("#{path}/*.mp3").collect do |normalize|
      normalize.gsub("#{path}/","")
    end

  end


  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end
end
