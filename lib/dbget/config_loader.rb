module DBGet
  class ConfigLoader

    def initialize(dbget_config, options = {})
      @dbget_config = dbget_config
      @options = options
    end

    def get_config(db_dump)
      @db_dump = db_dump

      if @dbget_config['mapping'].include?(db_dump.db)
        @dbget_config
      else
        raise "#{db_dump.db} is not found in your dbget.yml!"
      end
    end
  end
end
