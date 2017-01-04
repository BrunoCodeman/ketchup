
let time_to_work=$((60 * $1));
let time_to_rest=$((60 * $2));

echo "starting ketchup for $1 minutes";

sleep $time_to_work; 
paplay "./163730__corsica-s__doorbell.wav" &
zenity --info --text="You've been working for $1 minutes. Take a break for $2 minutes.";

sleep $time_to_rest;
paplay "./336899__lalks__siren-02-feeling.ogg" &
zenity --info --text="Rest time is over, back to work!";

exit 0;
