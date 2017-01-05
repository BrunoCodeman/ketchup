function notify() {
  if [ "$(uname)" == "Darwin" ]; then
    osascript -e "display notification \"$1\" with title \"ketchup\" " 
    afplay $2
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    zenity --info --text="$1" --title="ketchup"
    paplay $2
  fi
}

let time_to_work=$((60 * $1));
let time_to_rest=$((60 * $2));

echo "starting ketchup for $1 minutes";

sleep $time_to_work;
notify "You've been working for $1 minutes. Take a break for $2 minutes." "./163730__corsica-s__doorbell.wav"

sleep $time_to_rest;
notify "Rest time is over, back to work!" "./336899_lalks_siren-02-feeling.wav"

exit 0;