names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# this produces an error because the #[] method for arrays expects
# an integer, and there is no way to implicitly convert a string into
# an integer

# Solution if the index is known:
names[3] = 'jody'

# Solution if the index is unknown: (caveat: this will only find the 
# first instance)
names[names.find_index('margaret')] = 'jody'