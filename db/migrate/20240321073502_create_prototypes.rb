class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string  :title,      null: false
      t.text    :catch_copy, null: false
      t.ctext   :concept,    null: false
      t.user    :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end




| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | string     | null: false |
| catch_copy | text       | null: false |
| concept    | text       | null: false |
| user       | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_many :comments