-module(eqwater_30).
-compile([nowarn_export_all, export_all]).

-spec any_tuple_neg(tuple()) -> ok.
any_tuple_neg(T) ->
    case T of
        _ when is_tuple(T) -> T
    end.
