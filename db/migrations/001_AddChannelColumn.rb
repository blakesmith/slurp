class AddChannelColumn < Sequel::Migration
  def up
    alter_table :links do
      add_column :channel, String
    end
  end

  def down
    alter_table :links do
      drop_column :channel
    end
  end
end
