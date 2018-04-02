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
north_trains = []
array.each do |train|
  if train[:direction]=="north"
    north_trains.push(train[:train])
  end
end
p north_trains

#####5#####
east_trains = []
