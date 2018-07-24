require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    @@all << Song.new
    @@all[-1]

  end

  def save
    self.class.all << self
  end

  def self.new_by_name(title)
    song = Song.create
    song.name = title
    song
  # binding.pry
  end

  def self.create_by_name(title)
    song = Song.create
    song.name = title
    @@all << song
    song
  # binding.pry
  end

  def self.find_by_name(title)
    @@all.find {|song_inst| song_inst == title}
    binding.pry
  end

end
