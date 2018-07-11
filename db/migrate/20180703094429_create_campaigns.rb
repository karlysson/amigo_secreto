class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
