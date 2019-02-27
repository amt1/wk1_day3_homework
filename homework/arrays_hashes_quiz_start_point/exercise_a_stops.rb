stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array

stops.push "Edinburgh Waverley"
# p stops

# 2. Add `"Glasgow Queen St"` to the start of the array

stops.insert(0,"Glasgow Queen Street")
# p stops

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
# and
## 4. Work out the index position of `"Linlithgow"`:

number_of_stops=stops.length
p "number of stops is: #{number_of_stops}"

def find_station_number( stops, station_name )
  if stops[0]==station_name
    return 0
  else
    station_number=1
    number_of_stops=stops.length
    while ((stops[station_number] != station_name) && (station_number < number_of_stops)) do
#      p station_number
      station_number +=1
    end # end while
  end # end if
  return station_number
end # end def

p "What number stop is Linlithgow? (counting from 0)"
p find_station_number(stops, "Linlithgow")
p "Adding Polmont now"

stops.insert((find_station_number(stops, "Linlithgow")), "Polmont")

p "Station list is now:"
 p stops

# 5. Remove `"Livingston"` from the array using its name
p "Deleting Livingston..."

# stops.delete_at(find_station_number(stops, "Livingston"))
# using its NAME...
p "Find index of Livingston"
p stops.find_index("Livingston")
stops.delete_at(stops.find_index("Livingston"))

# ok so I just reinvented the wheel again!
# also, surely there must be a better way than using stops twice in one line

p "Station list is now:"
p stops

# 6. Delete `"Cumbernauld"` from the array by index
p "Deleting Cumbernauld..."

stops.delete_at(find_station_number(stops, "Cumbernauld"))

p "Station list is now:"
p stops

# 7. How many stops there are in the array?
number_of_stops=stops.length
p stops
p "number of stops is: #{number_of_stops}"

# 8. How many ways can we return `"Falkirk High"` from the array?
# see end

# 9. Reverse the positions of the stops in the array
p "Reversing..."
p stops.reverse()
# 10. Print out all the stops using a for loop

p "Printing all the stops with a for loop:"
for station_name in stops
  p station_name
end

# 8. How many ways can we return `"Falkirk High"` from the array?
p "first off, what number is Falkirk High?" #2
p find_station_number(stops, "Falkirk High")
p "Out of how many now?" #7
p stops.length

# ok here goes

p "1: directly by index number"
p stops[2]

p "2: Backwards from the end"
p stops[-5]

p "3: Reverse array, then forwards (subtract 1 for starting from 0 not -1)"
p stops.reverse[4]

p "4: if statement in a for loop:"
for station_name in stops
  if station_name=="Falkirk High"
    p station_name
  end
end

p "5: same thing with if on one line:"
for station_name in stops
  p station_name if station_name=="Falkirk High"
end

p "6: find index by name, then find name by index"
p stops[stops.index("Falkirk High")]

p "7: wrote my own function that does the same thing"
p stops[find_station_number(stops, "Falkirk High")]

p "8: mostly empty while loop"

station_number=0
number_of_stops=stops.length
station_name="Falkirk High"
while ((stops[station_number] != station_name) && (station_number < number_of_stops)) do
  station_number +=1
end # end while
p stops[station_number]
