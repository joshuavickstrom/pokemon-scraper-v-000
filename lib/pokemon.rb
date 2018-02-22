require 'pry'
class Pokemon

attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:, hp:=nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(idnum, db, hp)
    info = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", idnum).flatten
    self.new(id:info[0], name:info[1], type:info[2], db:db, hp:hp)
  end

end
