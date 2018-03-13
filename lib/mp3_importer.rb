require 'pry'
class MP3Importer

  def initialize(filepath)
    @@path = filepath
  end
 
  def path
    @@path
  end

  def files
    mypath = Dir.pwd
    mypath = File.join(mypath, '/spec/fixtures/mp3s')
    Dir.entries(mypath).select {|song| song.match(/\.mp3/) }
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end