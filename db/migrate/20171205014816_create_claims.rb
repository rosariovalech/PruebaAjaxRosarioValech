class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.string :title
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
