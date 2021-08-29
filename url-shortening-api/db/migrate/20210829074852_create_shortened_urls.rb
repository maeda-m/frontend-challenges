class CreateShortenedUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :shortened_urls do |t|
      t.references :token, null: false, foreign_key: true
      t.text :url
      t.string :code

      t.timestamps
    end
  end
end
