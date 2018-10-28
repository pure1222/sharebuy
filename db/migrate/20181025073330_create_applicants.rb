class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :email
      t.string :string
      t.string :want
      t.string :string

      t.timestamps
    end
  end
end
