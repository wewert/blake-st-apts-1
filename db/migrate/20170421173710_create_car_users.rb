class CreateCarUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :car_users do |t|
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
