
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new(name)
    file_name.song = self
  binding.pry
  end

    # describe '.new_by_filename' do
    #   it 'creates a new instance of a song from the file that\'s passed in' do
    #     new_instance = Song.new_by_filename(file_name)
    #     expect(new_instance.name).to eq('Black or White')
    #     expect(new_instance.artist.name).to eq('Michael Jackson')
    #   end


end
