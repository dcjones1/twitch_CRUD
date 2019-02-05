class AddUserToStreams < ActiveRecord::Migration[5.2]
  def change
    add_reference :streams, :user, foreign_key: true
  end
end
