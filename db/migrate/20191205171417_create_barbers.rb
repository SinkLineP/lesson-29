class CreateBarbers < ActiveRecord::Migration[5.2]

	def change    

  	create_table :barber do |t|
  		t.string :name

  		t.timestamps
  	end

	 	# Barber.create :name => 'Jessie Pickman'
	 	# Barber.create :name => 'Walter White'
	 	# Barber.create :name => 'Gus Fring'

  end
end
