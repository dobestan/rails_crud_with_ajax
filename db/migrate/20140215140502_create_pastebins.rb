class CreatePastebins < ActiveRecord::Migration
  def change
    create_table :pastebins do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
