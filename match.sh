#!/bin/sh
source vars.sh

cd $PATH_TO_JCF_WORKSPACE

bazel run //:csv_matcher -- \
  --ledger_account_listing $MASTER_ACCOUNTS_FILE \
  --master_ledger $MASTER_LEDGER_FILE \
  --settings_profile_file $JCF_SETTINGS_PROFILES_FILE \
  --enabled_settings_profiles $1 \
  --transaction_csv $2 \
  --output $3

