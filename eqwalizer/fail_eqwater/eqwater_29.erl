-module(eqwater_29).
-compile([nowarn_export_all, export_all]).

-type my_list() :: {term(), my_list()} | number().

-spec foo8_neg(my_list()) -> number().
foo8_neg(Args) ->
    case Args of
        {_, Args} -> 1 + foo8_neg(Args);
        _ -> Args
    end.
