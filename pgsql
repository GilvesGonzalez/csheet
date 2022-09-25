---
tags: [ database ]
---
# To show help options:
pg_dump -?
pg_restore -?
psql -?

# To list databases:
psql -l

# To show all settings:
psql -c 'show all'

# To backup:
pg_dump -i -h <hostname> -p <port> -U <user> -F c -b -v -f <backup-path> <database>

-p, --port=PORT database server port number
-i, --ignore-version proceed even when server version mismatches
-h, --host=HOSTNAME database server host or socket directory
-U, --username=NAME connect as specified database user
-W, --password force password prompt (should happen automatically)
-d, --dbname=NAME connect to database name
-v, --verbose verbose mode
-F, --format=c|t|p output file format (custom, tar, plain text)
-c, --clean clean (drop) schema prior to create
-b, --blobs include large objects in dump
-v, --verbose verbose mode
-f, --file=FILENAME output file name

# To restore:
pg_restore -i -v -h <hostname> -p <port> -U <user> -d <database> <backup-path>

-p, --port=PORT database server port number
-i, --ignore-version proceed even when server version mismatches
-h, --host=HOSTNAME database server host or socket directory
-U, --username=NAME connect as specified database user
-W, --password force password prompt (should happen automatically)
-d, --dbname=NAME connect to database name
-v, --verbose verbose mode
-C, --create Create database
