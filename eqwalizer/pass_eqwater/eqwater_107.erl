-module(eqwater_107).
-compile([nowarn_export_all, export_all]).



-spec foo7([term()] | number()) -> number().
foo7(Args) ->
    case Args of
        Args when is_list(Args) -> length(Args);
        _ -> Args
    end.
