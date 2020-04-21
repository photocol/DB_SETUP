#!/bin/bash
mysql -u root <deleteall.sql
mysql -u root <dbload.sql
mysql -u root <testcase.sql
mysql -u root <grant.sql
