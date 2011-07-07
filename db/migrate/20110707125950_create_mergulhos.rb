class CreateMergulhos < ActiveRecord::Migration
  def self.up
    create_table :mergulhos do |t|
      t.date :data
      t.time :hora_inicio
      t.time :hora_fim
      t.string :nome_local, :limit => 45, :null => false
      t.string :local_mergulho, :limit => 45, :null => false
      t.float :profundidade
      t.float :longitude
      t.float :latitude
      t.string :temperatura, :limit => 20
      t.boolean :gmaps
      t.references :mergulhador

      t.timestamps
    end
  end

  def self.down
    drop_table :mergulhos
  end
end
