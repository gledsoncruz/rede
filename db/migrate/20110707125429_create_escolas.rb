class CreateEscolas < ActiveRecord::Migration
  def self.up
    create_table :escolas do |t|
      t.string :responsavel, :limit => 45, :null => false
      t.string :nome, :limit => 60, :null => false
      t.string :localizacao, :limit => 80
      t.date :fundacao

      t.timestamps
    end
  end

  def self.down
    drop_table :escolas
  end
end
