#!/bin/bash
set -e 

echo "${DATABASE_URL}"

vartest1=`psql -U postgres -d $DATABASE_URL -c "select from posts where createat < extract(epoch from (now() - interval '12 months'))::int8 * 1000;"`
vartest2=`psql -U postgres -d $DATABASE_URL -c "select from reactions where createat < extract(epoch from (now() - interval '12 months'))::int8 * 1000;"`
vartest3=`psql -U postgres -d $DATABASE_URL -c "select from fileinfo where createat < extract(epoch from (now() - interval '12 months'))::int8 * 1000;"`

echo "${vartest1}"
echo "${vartest2}"
echo "${vartest3}"
echo "Finish"
