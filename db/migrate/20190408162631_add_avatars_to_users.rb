class AddAvatarsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatars, :json
  end
  class User < ActiveRecord::Base
    mount_uploaders :avatars, AvatarUploader
    serialize :avatars, JSON # If you use SQLite, add this line
  end
end
