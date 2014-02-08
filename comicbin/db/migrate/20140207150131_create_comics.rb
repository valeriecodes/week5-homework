class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
    	t.string	:title
    	t.text		:description
    	t.string	:image_url
    end
  end
end
