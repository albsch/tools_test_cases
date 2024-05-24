%%% This is a correct callback module for the correct_behaviour.

-module(correct_callback).

-behaviour(correct_behaviour).

-export([foo/0, bar/2]).

foo() ->
    yes.

bar({'query', 'boo'}, _Any) ->
    no;
bar({'reply', [_R]}, [1,2,3]) ->
    yes.