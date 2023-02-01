pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

=begin
  Since the value for the :dog key is an array, instead of using assignment
  we need to use an array method to push the value into the array. This will
  keep the old values in the array, and still add the new value.
=end