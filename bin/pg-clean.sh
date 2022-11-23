#!/bin/bash
set -e 

echo "${DATABASE_URL}"

vartest=`psql -U postgres -d $DATABASE_URL -c "SELECT * FROM users limit 10"`
echo "${vartest}"
