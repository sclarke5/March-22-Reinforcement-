array =
[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#1#
direction_111 = array[-1][:direction]
p direction_111

##2##
frequency_80B = array[-3][:frequency_in_minutes]
p frequency_80B

###3###
direction_610 = array[2][:direction]
p direction_610

####4$###
northward_trains = []
array.each do |train|
  if train[:direction]=="north"
    northward_trains.push(train[:train])
  end
end
p northward_trains

#####5#####
eastward_trains = []
array.each do |train|
  if train[:direction]=="east"
    eastward_trains.push(train[:train])
  end
end
p eastward_trains

######6######
def train_direction(direction, list)
direction_train = []
list.each do |train|
    if train[:direction] == direction
      direction_train<<(train[:train])
    end
  end
  return direction_train
end

p train_direction("north", array)
p train_direction("east", array)

#######7#######
array[3][:departure_time] = 5
p array[3]
