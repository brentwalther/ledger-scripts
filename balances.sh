#!/bin/sh
source vars.sh

echo "Liabilities"
$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE register --tail 20 "Liabilities:Credit Card"
echo "Current Assets"
$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE register --tail 20 "Assets:Current Assets"

