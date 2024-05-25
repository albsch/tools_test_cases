-module(eqwater_24).
-compile([nowarn_export_all, export_all]).


-spec occ57_neg
    ([atom()] | atom(), atom()) -> [atom()].
occ57_neg(V, _) ->
    case V of
        [_] -> V;
        A -> [A]
    end.
    
-spec occ58_neg
    ([atom()] | atom(), atom()) -> [atom()].
occ58_neg(V, A) ->
    case V of
        [_] -> V;
        [] -> V;
        A2 -> [A2]
    end.
