-module(dict_use_5).

-export([ok5/0]).

ok5() ->  % this is OK since some_mod:new/0 might be returning a dict:dict()
  dict:fetch(foo, some_mod:new()).

