class CreateBarbers < ActiveRecord::Migration[5.2] # тут должны быть ковычки

	def change    

  	create_table :barbers do |t|
  		t.string :name

  		t.timestamps
  	end

		Barbers.create :name => 'Jessie Pickman'
	 	Barbers.create :name => 'Walter White'
	 	Barbers.create :name => 'Gus Fring'


  end
end
