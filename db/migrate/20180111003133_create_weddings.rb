class CreateWeddings < ActiveRecord::Migration[5.1]
  def change
    create_table :weddings do |t|
      t.datetime :wedding_date
      t.string :first_partner
      t.string :second_partner
      t.references :user, index: true, foreing_key: true

      t.timestamps
    end
  end
end


