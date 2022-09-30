class AddTitleToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string
    add_column :books, :body, :text
    add_column :books, :update, :text

    t.string :title

      t.timestamps

    add_column :books, :body, :text
    add_column :books, :introduction, :text
    add_column :books, :price, :integer

  end
end