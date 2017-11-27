class Song

  def self.new_by_filename(file_name)
    all = {}
    self.files.each do |i|
      file = i.split(" - ")
      song = []
      song << file[1]
      if all[file[0]] == nil
        all[file[0]] = song
      else
        all[file[0]] << song[0]
      end
    end

end
