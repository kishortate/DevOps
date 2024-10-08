#!/bin/bash
#Project to print RAM Status

TOTAL_RAM=$(free -mt | awk '/Mem:/{print $2}')
FREE_RAM=$(free -mt | awk '/Mem:/{print $4}')
REQUIRED_RAM=500

if [ $FREE_RAM -lt $REQUIRED_RAM ]
then
        echo "WARNING.! RAM is running LOW : $FREE_RAM MB free out of $TOTAL_RAM MB."
else
	echo "Sufficient RAM is available. $FREE_RAM MB free out of $TOTAL_RAM MB."   
fi
                                   
