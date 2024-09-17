#!/bin/bash

mysql -u root -ptest < /docker-entrypoint-initdb.d/mysqldb-init.sql