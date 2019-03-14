class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string      :name
      t.string      :title
      t.text        :content
      t.timestamps null: true
    end
  end
end
