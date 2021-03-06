#!/bin/sh

# Path to the ledger binary.
LEDGER_EXECUTABLE=/path/to/ledger/executable/ledger

# Paths to your ledger CLI (https://www.ledger-cli.org/index.html) compatible
# files. It is not required to keep accounts, commidities, and the actual
# ledger in separate files but I do so for convenience and organization. You
# **must** specify a master ledger but may leave the accounts and commodities
# files unspecified.
MASTER_ACCOUNTS_FILE=/path/to/ledger/master.accounts
MASTER_COMMODITIES_FILE=/path/to/ledger/master.commodities
MASTER_LEDGER_FILE=/path/to/ledger/master.ledger

# The path to the git clone of github.com/brentwalther/jcf
PATH_TO_JCF_WORKSPACE=/path/to/jcf

# The path to a JCF settings profile text proto file.
JCF_SETTINGS_PROFILES_FILE=/path/to/settings_profiles.textproto
