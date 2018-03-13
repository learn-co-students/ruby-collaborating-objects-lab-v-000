require 'pry'

class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    substring = './spec/fixtures/mp3s/' #substring to be removed from each path resulting from Dir
    @files = Dir["#{@path}/**/*.mp3"] #creates array of paths ending in .mp3
    @files.map! { |path| path.sub(substring, "") }
    @files
  end

  def import
    file_array_to_import = self.files
    file_array_to_import.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end

end
