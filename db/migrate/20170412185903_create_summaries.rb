class CreateSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.string :text
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true

      t.timestamps
    end
  end
end
