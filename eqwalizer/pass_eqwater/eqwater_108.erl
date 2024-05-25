-module(eqwater_108).
-compile([nowarn_export_all, export_all]).



-type my_list() :: {term(), my_list()} | number().
-spec foo8(my_list()) -> number().
foo8(Args) ->
    case Args of
        {_, L} -> 1 + foo8(L);
        _ -> Args
    end.
