flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# Yields:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flinstones.flatten!