-module(roots).
-compile(export_all).

-record(roots, {channels, accounts, commits}).

accounts(R) ->
    R#roots.accounts.
channels(R) ->
    R#roots.channels.
commits(R) ->
    R#roots.commits.
