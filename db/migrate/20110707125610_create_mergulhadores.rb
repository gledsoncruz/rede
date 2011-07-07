class CreateMergulhadores < ActiveRecord::Migration
  def self.up
    create_table :mergulhadores do |t|
      t.string :nome, :limit => 45, :null => false
      t.string :sexo, :limit => 1, :null => false
      t.date :data_nascimento

      t.timestamps
    end
  end

  def self.down
    drop_table :mergulhadores
  end
end
