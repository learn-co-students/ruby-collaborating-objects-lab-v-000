class MP3Importer
  attr_accessor :path, :files
  def initialize(p)
    @path=p; @files=[]; p+="/*"
    Dir[p].each do |fn|
     @files<<fn[p.length-1 .. -1]
    end
  end
  def import() @files.each { |fn| Song.new_by_filename(fn) } end
end
