#!/bin/bash
BASE=$(pwd)
PID=$BASE/odoo-server.pid
LOG=$BASE/odoo-server.sh.log
CMD='python'
COMMAND="$CMD odoo.py -c odoo-server.conf"
USR=$(whoami)

status() {
    if [ -f $PID ]
    then
        echo "PID: $( cat $PID )"
        echo "PID file: $PID"
        echo ; echo "Process:"
        ps -ef | grep -v grep | grep $( cat $PID )
    else
        echo "No PID file"
    fi
}

start() {
    if [ -f $PID ]
    then
        echo "Already started. PID: [$( cat $PID )]"
    else
        echo "Starting odoo"
        touch $PID
        if nohup $COMMAND > /dev/null 2>&1 &
        then echo $! > $PID
             echo "Done, PID: $( cat $PID )"
             echo "$(date '+%Y-%m-%d %X'): START [$COMMAND]" >> $LOG
        else echo "Error starting odoo"
             /bin/rm $PID
        fi
    fi
}

kill_cmd() {
    SIGNAL=""; MSG="Killing"
    while true
    do
        LIST=`ps -ef | grep -v grep | grep $CMD | grep -w $USR | awk '{print $2}'`
        if [ "$LIST" ]
        then
            echo $MSG $LIST
            echo $LIST | xargs kill $SIGNAL
            sleep 2
            SIGNAL="-9" ; MSG="Killing $SIGNAL"
            if [ -f $PID ]
            then
                /bin/rm $PID
            fi
        else
           echo "All killed"
           break
        fi
    done
}

stop() {
    echo "Stoping odoo, PID: $( cat $PID )"
    if [ -f $PID ]
    then
        if kill $( cat $PID )
        then 
             echo "$(date '+%Y-%m-%d %X'): STOP [kill $( cat $PID )]" >> $LOG
        fi
        /bin/rm $PID
        kill_cmd
        echo "Done"
    else
        echo "No PID file. Already stopped?"
    fi
}

case "$1" in
    'start')
            start
            ;;
    'stop')
            stop
            ;;
    'restart') 
            if [ -f $PID ]
            then
                stop ; echo "Sleeping"; sleep 1 ;
                start
            else
                echo "No PID file. Already stopped?"
            fi
            ;;
    'status')
            status
            ;;
    *)
            echo "Usage: $0 { start | stop | restart | status }"
            exit 1
            ;;
esac

exit 0
