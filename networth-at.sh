#!/bin/sh
source vars.sh

$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE balance --end $1 Assets Liabilities Equity
