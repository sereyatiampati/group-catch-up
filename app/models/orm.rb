require 'bundler'
Bundler.require

DB = { conn: SQLite3::Database.new("db/music.db") }

class Song

  attr_accessor :name, :album, :id

  def initialize(name:, album:, id: nil)
    @id = id
    @name = name
    @album = album
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
      INSERT INTO songs (name, album)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.album)

  end

end

  Song.create_table
  Song.new(name:"Remedy", album: 25).save
  Song.new(name:"Dance to the beat", album: 26).save