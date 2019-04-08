class AddAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string
  end
class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end

u = User.new
u.avatar = params[:file] # Assign a file like this, or

# like this
File.open('somewhere') do |f|
  u.avatar = f
end

u.save!
u.avatar.url # => '/url/to/file.png'
u.avatar.current_path # => 'path/to/file.png'
u.avatar_identifier # => 'file.png'