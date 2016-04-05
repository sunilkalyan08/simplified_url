class CreateUrlShortners < ActiveRecord::Migration
  def change
    create_table :url_shortners do |t|
      t.string :original_url
      t.string :generated_url

      t.timestamps null: false
    end
  end
end
