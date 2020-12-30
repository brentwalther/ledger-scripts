#!/bin/sh
source vars.sh

$LEDGER_EXECUTABLE -f $MASTER_LEDGER_FILE csv \
  --csv-format='%(quoted(date)),%(quoted(display_account)),%(quoted(quantity(scrub(display_amount))))\n' \
  --sort '-date' \
  Expenses
