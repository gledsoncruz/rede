class AddAvatarToMergulhadores < ActiveRecord::Migration
  def self.up
    add_column :mergulhadores, :avatar_file_name,    :string, :limit => 60
    add_column :mergulhadores, :avatar_content_type, :string, :limit => 60
    add_column :mergulhadores, :avatar_file_size,    :integer
    add_column :mergulhadores, :avatar_updated_at,   :datetime
  end

  def self.down
    remove_column :mergulhadores, :avatar_file_name
    remove_column :mergulhadores, :avatar_content_type
    remove_column :mergulhadores, :avatar_file_size
    remove_column :mergulhadores, :avatar_updated_at
  end
end
