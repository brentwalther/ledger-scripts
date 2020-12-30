#!/bin/sh
source vars.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

file_to_merge=$1
account_name=$2

subbed_ledger_file=$(mktemp)
sed "s/An account/$account_name/g" $file_to_merge > $subbed_ledger_file

concatenated_file=$(mktemp)
cat $MASTER_ACCOUNTS_FILE $MASTER_COMMODITIES_FILE $MASTER_LEDGER_FILE $subbed_ledger_file > $concatenated_file

verified_file=$(mktemp)
$LEDGER_EXECUTABLE -f $concatenated_file print --account_width=70 --pedantic --sort 'date' > $verified_file
exit_code=$?; if [[ $exit_code != 0 ]]; then exit $exit_code; fi

mv $verified_file $MASTER_LEDGER_FILE

