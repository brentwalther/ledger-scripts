#!/bin/sh
source vars.sh

$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE csv --csv-format='%P\t%A\n' Expenses: Income:
