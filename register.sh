#!/bin/sh
source vars.sh

# Account name is arg1, optional arg2 is number of transactions to return.
$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE register --sort date --tail ${2:-25} "$1"
