class CreateEscolasMergulhadores < ActiveRecord::Migration
  def self.up
    create_table :escolas_mergulhadores, :id => false do |t|
      t.references :escola
      t.references :mergulhador

      t.timestamps
    end
  end

  def self.down
    drop_table :escolas_mergulhadores
  end
end
