class CreateCommentss < ActiveRecord::Migration[7.0]
  def change
    create_table :commentsses do |t|
      t.string :name
      t.text :comment
      t.timestamps
    end
  end
end
