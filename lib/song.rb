class Song
  attr_accessor :name, :artist

  def initialize(input_song)
    @name = input_song
  end

  def self.new_by_filename(fn)
    fn_arr = fn.split(" - ")
    # artist = Artist.find_or_create_by_name(fn_arr[0])
    input = self.new(fn_arr[1])
    input.artist = Artist.find_or_create_by_name(fn_arr[0])
    input.artist.add_song(fn_arr[0])
    return input
  end

end
