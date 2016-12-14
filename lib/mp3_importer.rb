class MP3Importer
  def files
    @files ||= Dir.glob("#{path}/*.mp3").map{ |file| file.gsub("#{path}/", "") }
  end

  def import(files)
    files.each{ |file| Song.new_by_filename(file) }
  end
end
