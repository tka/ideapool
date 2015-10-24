class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, default: '', null: false
      t.string :web_url, default: '', null: false
      t.string :fb_url,  default: '', null: false
      t.string :github_url, default: '', null: false
      t.string :image,   default: '', null: false
      t.references :category, null: false
      t.text   :tags, array: true, default: []
      t.text   :description, default: '', null: false
      t.timestamps null: false
    end
  end
end
