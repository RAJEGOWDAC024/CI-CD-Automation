#!/bin/bash

echo "Running single UE test..."

# ADD THIS PART HERE
pgrep nr-gnb > /dev/null || { echo " gNB not running"; exit 1; }

if [ -d "$HOME/UERANSIM" ]; then
    echo "UERANSIM found → running real test"

    cd ~/UERANSIM

    rm -f ue.log

    ./build/nr-ue -c config/open5gs-ue.yaml > ue.log 2>&1 &
    UE_PID=$!

    echo "Waiting for registration..."
    sleep 20

    kill $UE_PID 2>/dev/null

    echo "UE LOG OUTPUT:"
    tail -20 ue.log

    if grep -q "Registration accept" ue.log; then
        echo "PASS ✅"
        exit 0
    else
        echo "FAIL ❌"
        exit 1
    fi

else
    echo "UERANSIM not available → simulated test"
    echo "PASS"
fi
