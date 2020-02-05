class CreateChannelShows < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_shows do |t|
      t.string :name
      t.time :timing
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
