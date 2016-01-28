class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :ContactCompany
      t.string :JobTitle
      t.string :JobDID
      t.string :JobType
      t.string :MinExp
      t.string :MaxExp
      t.string :CityName
      t.string :CountryName
      t.string :ContactEmail
      t.text :JobDesc
      t.text :JobReq

      t.timestamps null: false
    end
  end
end
