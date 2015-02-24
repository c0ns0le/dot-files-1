# pg_restore
# Autogenerated from man page /usr/local/share/man/man1/pg_restore.1
# using Deroffing man parser
complete -c pg_restore -s a -l data-only --description 'Restore only the data, not the schema (data definitions).'
complete -c pg_restore -s c -l clean --description 'Clean (drop) database objects before recreating them.'
complete -c pg_restore -s C -l create --description 'Create the database before restoring into it.'
complete -c pg_restore -s d -l dbname --description 'Connect to database dbname and restore directly… [See Man Page]'
complete -c pg_restore -s e -l exit-on-error --description 'Exit if an error is encountered while sending S… [See Man Page]'
complete -c pg_restore -s f -l file --description 'Specify output file for generated script, or fo… [See Man Page]'
complete -c pg_restore -s i -l ignore-version --description 'A deprecated option that is now ignored.'
complete -c pg_restore -s I -l index --description 'Restore definition of named index only.'
complete -c pg_restore -s j -l jobs --description 'Run the most time-consuming parts of pg_restore… [See Man Page]'
complete -c pg_restore -s l -l list --description 'List the contents of the archive.'
complete -c pg_restore -s L -l use-list --description 'Restore only those archive elements that are li… [See Man Page]'
complete -c pg_restore -s n -l schema --description 'Restore only objects that are in the named schema.'
complete -c pg_restore -s O -l no-owner --description 'Do not output commands to set ownership of obje… [See Man Page]'
complete -c pg_restore -s P -l function --description 'Restore the named function only.'
complete -c pg_restore -s R -l no-reconnect --description 'This option is obsolete but still accepted for … [See Man Page]'
complete -c pg_restore -s s -l schema-only --description 'Restore only the schema (data definitions), not… [See Man Page]'
complete -c pg_restore -s S -l superuser --description 'Specify the superuser user name to use when disabling triggers.'
complete -c pg_restore -s t -l table --description 'Restore definition and/or data of named table only.'
complete -c pg_restore -s T -l trigger --description 'Restore named trigger only.'
complete -c pg_restore -s v -l verbose --description 'Specifies verbose mode.'
complete -c pg_restore -s V -l version --description 'Print the pg_restore version and exit.'
complete -c pg_restore -s x -l no-privileges -l no-acl --description 'Prevent restoration of access privileges (grant… [See Man Page]'
complete -c pg_restore -s 1 -l single-transaction --description 'Execute the restore as a single transaction (th… [See Man Page]'
complete -c pg_restore -l disable-triggers --description 'This option is relevant only when performing a … [See Man Page]'
complete -c pg_restore -l no-data-for-failed-tables --description 'By default, table data is restored even if the … [See Man Page]'
complete -c pg_restore -l no-security-labels --description 'Do not output commands to restore security labe… [See Man Page]'
complete -c pg_restore -l no-tablespaces --description 'Do not output commands to select tablespaces.'
complete -c pg_restore -l section --description 'Only restore the named section.'
complete -c pg_restore -l use-set-session-authorization --description 'Output SQL-standard SET SESSION AUTHORIZATION c… [See Man Page]'
complete -c pg_restore -s '?' -l help --description 'Show help about pg_restore command line arguments, and exit.'
complete -c pg_restore -s h -l host --description 'Specifies the host name of the machine on which… [See Man Page]'
complete -c pg_restore -s p -l port --description 'Specifies the TCP port or local Unix domain soc… [See Man Page]'
complete -c pg_restore -s U -l username --description 'User name to connect as.'
complete -c pg_restore -s w -l no-password --description 'Never issue a password prompt.'
complete -c pg_restore -s W -l password --description 'Force pg_restore to prompt for a password befor… [See Man Page]'
complete -c pg_restore -l role --description 'Specifies a role name to be used to perform the restore.'
complete -c pg_restore -o 'l.' --description '.'
complete -c pg_restore -s F -l format --description '.'
complete -c pg_restore -l 'single-transaction.' --description '.'
complete -c pg_restore -l 'data-only.' --description '.'
complete -c pg_restore -l 'exit-on-error.' --description '.'
complete -c pg_restore -o 'U)' --description 'pg_restore, but can switch to a role with the required rights.'

