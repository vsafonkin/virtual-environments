#!/bin/bash -e
################################################################################
##  File:  mssql-cmd-tools.sh
##  Desc:  Install MS SQL Server client tools (https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools?view=sql-server-2017)
################################################################################


apt-get install -y mssql-tools unixodbc-dev
apt-get -f install
ln -s /opt/mssql-tools/bin/* /usr/local/bin/

echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! command -v sqlcmd; then
    echo "sqlcmd was not installed"
    exit 1
fi