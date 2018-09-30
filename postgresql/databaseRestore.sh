#!/bin/bash
if  [ "$1" != "" ]; then
  filename=$1
else
  echo "Example: ./databaseRestore.sh idempiereDB.backup idempiere"
  exit
fi
if  [ "$2" != "" ]; then
  database=$2
else
  echo "Example: ./databaseRestore.sh idempiereDB.backup idempiere"
  exit
fi
echo "Restore database: "$filename" to "$database
read -p "Press any key to continue..."
pg_restore -U adempiere -d $database $filename 