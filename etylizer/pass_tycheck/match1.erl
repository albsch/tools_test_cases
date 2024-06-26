-module(match1).

-compile(export_all).
-compile(nowarn_export_all).

-include_lib("eunit/include/eunit.hrl").

-spec foo(atom() | list()) -> integer().
foo(X) when is_atom(X) -> 5;
foo(X) ->
    [ _ | _ ] = X,
    length(X). % X has type list() here

-spec my_test() -> ok.
my_test() ->
    ?assertEqual(2, foo([1,2])),
    ok.
