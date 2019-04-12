#!/bin/bash
S_PATH=~/dotfiles/scripts/bleep
STATE=$S_PATH/bleep_state
SOUND_BEEP=`cat $STATE`

echo $SOUND_BEEP

if [ $SOUND_BEEP -lt "2" ]; then
    echo 5 > $STATE 
else
    ((SOUND_BEEP--)) 
    echo $SOUND_BEEP > $STATE
fi
paplay $S_PATH/$SOUND_BEEP.wav
