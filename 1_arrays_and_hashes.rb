# These exercises (mostly) require you to define methods
# Most methods will take an array or hash as an argument
# Some methods will take other args
# Some methods won't take any args

# You won't find everything that you need in our materials
# Use the Ruby Docs and Google liberally if you get stuck

# Over to you!

## Arrays

# first_element
# takes one array as an arg
# returns the first element
def first_element(arr)
  return arr[0]
end

# second_element
# takes one array as an arg
# returns the second element
def second_element(arr)
  return arr[1]
end

# last_element
# takes one array as an arg
# returns the last element
def last_element(arr)
  return arr[-1]
end
# first_two_elements
# takes one array as an arg
# returns the first two elements
def first_two_elements(arr)
  return arr[0...2]
end

# first_three_elements
# takes one array as an arg
# returns the first three elements
def first_three_elements(arr)
  return arr[0...3]
end

# total
# takes one array of numbers as an arg
# adds all the numbers together
# returns the total
def total(arr)
  return arr.sum
end
# lowest_number
# takes one array of numbers as an arg
# returns the lowest value
def lowest_number(arr)
  arr.min
end

# highest_number
# takes one array of numbers as an arg
# returns the highest value
def highest_number(arr)
  return arr.max
end

# the_beatles
# takes no args
# returns ['john', 'paul', 'george', 'ringo']
def the_beatles
  return ['john', 'paul', 'george', 'ringo']
end

# i_joined_the_beatles
# takes one string as an arg
# when that string is 'freda' (for example)
# returns ['john', 'paul', 'george', 'ringo', 'freda']
def i_joined_the_beatles(name)
  return ['john', 'paul', 'george', 'ringo', name]
end

# we_joined_the_beatles
# takes one array as an arg
# when the array is ['sam', 'alex'] (for example)
# returns ['john', 'paul', 'george', 'ringo', 'sam', 'alex']
def we_joined_the_beatles(arr)
  return ['john', 'paul', 'george', 'ringo'] + arr
end

# remove_nils_from_array
# takes one array as an arg
# returns the array, minus any nils
def remove_nils_from_array(arr)
  return arr - [nil]
end

# double_array
# takes one array as an arg
# when that array is [1,2,3]
# returns [1,2,3,1,2,3]
def double_array(arr)
  return arr + arr
end

# unique_elements
# takes one array as an arg
# when that array is [1,1,2,2,3,3]
# returns [1,2,3]
def unique_elements(arr)
  return arr.uniq
end

# add_to_array
# takes one array and one string as args
# adds the string to the array
# returns the new array
def add_to_array(arr, string)
  return arr << string
end
## Hashes

### The first two exercises focus on reading values from hashes

# get_band_member
# takes one string as an arg
# that string corresponds to a hash key
# returns the value of that key
#??the hash is defined for you (see below)
# if the arg is 'vocalist'
# returns 'miss piggy'

def get_band_member(key)
  band_members = {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
  return band_members[key]
end

# query product
# takes one string as an arg
# that string corresponds to a hash key
# returns the value of that key
# the hash is defined for you (see below)
# if the arg is 'price'
# returns 2.99

def query_product(key)
  product = {'price' => 2.99, 'name' => 'chocolate', 'ingredients' => ['cocoa', 'nuts', 'mylk']}
  return product[key]
end

### Focus: Adding key value pairs to hashes

# new_drummer
# takes one string as an arg
# adds a new key/value pair to the hash
# the key is 'drummer' and the value is the string
# returns the new hash
# the existing band members are: {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
# if the arg is 'kermit'
# returns {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'kermit'}
def new_drummer(string)
  band_member = {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
  band_member['drummer'] = string
  return band_member
end

### Focus: Changing the value of an existing key-value pair in a hash

# new_vocalist
# takes one string as an arg
# replaces the value of the 'vocalist' key with the string
# returns the new hash
# the existing band members are: {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
# if the arg is 'waldo'
# returns {'vocalist' => 'waldo', 'lead_guitar' => 'scooter'}
def new_vocalist(string)
  band_members = {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
  band_members['vocalist'] = string
  return band_members
end

# touch_in
# takes two args
# arg one: the name of a tube station e.g. 'Aldgate East'
# arg two: a date and time e.g. '2022/01/30 17:12'
# returns a hash with key-value pairs for 'entrypoint' and 'time'
def touch_in(name, time)
  return {"entrypoint" => name, "time" => time}
end

### Focus: Using the Ruby docs to find the right method/s

# all_values
# takes one hash as an arg
# returns the values
def all_values(hashmap)
  return hashmap.values
end

# all_keys
# takes one hash as an arg
# returns the keys
def all_keys(hashmap)
  return hashmap.keys
end

# remove_nils_from_hash
# takes one hash an an arg
# removes key-value pairs where the value is nil
# returns the remaining key-value pairs as a hash
def remove_nils_from_hash(hashmap)
  return hashmap.compact
end

# key_value_swap
# takes one hash as an arg
# swaps the keys with the values
# returns the new hash
def key_value_swap(hashmap)
  hashmap.invert
end
