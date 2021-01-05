#!/bin/sh

# Declare Venue location array

declare -a Venue=("Collingwood" "West End" "Newstead" "Milton")

# Declare branch key array (for URLS)

declare -a Branch=("8674e350-d340-4ab3-a462-5595061a6950" "690326f9-98ce-4249-bd91-53a0676a137b" "a3010228-dfc6-4317-86c0-3839ffdf3fd0" "d969f1b2-0c9f-49a9-b2ac-d7775642f298")

# For loop to iterate through both arrays and display venue capacity through Urban Climb's custom WordPress venue capacity widget

for ((i=0;i<${#Venue[@]};++i)); do

    echo "${Venue[i]}": $(curl -s https://portal.urbanclimb.com.au/uc-services/widgets/venue-capacity.ashx?branch="${Branch[i]}" | awk '/(Closed|Quiet|Lively|Pumping|Full)/')

done
