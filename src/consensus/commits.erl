-module(commits).
-export([get/2,write/2, test/0]).

get(Hash, Commits) ->
    true = is_binary(Hash),
    ID = hash2ID(Hash),
    {X, Leaf, Proof} = trie:get(ID, Commits, existence),
    V = case Leaf of
	    empty -> empty;
	    L -> full
	end,
    {X, V, Proof}.
write(Hash, Commits) ->
    ID = hash2ID(Hash),
    trie:put(ID, <<>>, Commits, existence).
	     
hash2ID(X) -> 
    S = size(X),
    S = trie_hash:hash_depth(),
    hash2ID(X, 0).
hash2ID(<<>>, N) -> N;
hash2ID(<<X, Y/binary>>, N) ->
    M = (N*256) + X,
    hash2ID(Y, M).


test() ->
    C = hash:doit(1),
    {_, empty, _} = get(C, 0),
    NewLoc = write(C, 0),
    {_, full, _} = get(C, NewLoc),
    {_, empty, _} = get(C, 0),
    success.
