function play() {
  if [ "$(uname)" == "Darwin" ]; then
    afplay $1        
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    paplay $1
  fi
}

let time_to_work=$((60 * $1));
let time_to_rest=$((60 * $2));

echo "starting ketchup for $1 minutes";

sleep $time_to_work;
play "./163730__corsica-s__doorbell.wav" &
zenity --info --text="You've been working for $1 minutes. Take a break for $2 minutes.";

sleep $time_to_rest;
play "./336899_lalks_siren-02-feeling.wav" &
zenity --info --text="Rest time is over, back to work!";

exit 0;