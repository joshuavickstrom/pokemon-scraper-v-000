class Pokemon



  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db

  end

  def self.save(id, name, type, db)
    database_connection.execute("INSERT INTO pokemon (id, name, type, db) VALUES (?, ?, ?, ?)", id, name, type, db)
  end
end
