class Pokemon

attr_accessor :id, :name, :type, :db

  def initialize(name:, type:, db:)
    @name = name
    @type = type
    @db = db

  end

  def self.save(name, type, db)
    database_connection = SQLite3::Database.new('db/pokemon.db')
    database_connection.execute("INSERT INTO pokemon (id, name, type, db) VALUES (?, ?, ?, ?)", id, name, type, db)
  end
end
