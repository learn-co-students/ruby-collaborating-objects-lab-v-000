file_names = []
file_name_parts = []
@@file_names.collect do |filename|
  filename.gsub!(".mp3", "")
  file_names << filename.split(" - ")
end
file_names.collect do |filename|
  artist = Artist.find_or_create_by_name(filename[0])
  artist.add_song(filename[1])
  binding.pry
end


self.title.detect {|name| name.title == file_name ?  nil : #self.title << file_name }
