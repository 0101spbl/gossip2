class CreatePrivateMessage < ActiveRecord::Migration[7.0]
  def change
    create_table :private_messages do |t|

      t.timestamps
    end
  end
end
