class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :summary, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
