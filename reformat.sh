#!/bin/sh
source vars.sh

concatenated_file=$(mktemp)
cat $MASTER_ACCOUNTS_FILE $MASTER_COMMODITIES_FILE $MASTER_LEDGER_FILE > $concatenated_file
$LEDGER_EXECUTABLE -f $concatenated_file print --account_width=70 --pedantic --sort 'date' > $MASTER_LEDGER_FILE

