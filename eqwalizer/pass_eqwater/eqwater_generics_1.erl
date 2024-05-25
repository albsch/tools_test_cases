-module(eqwater_generics_1).
-compile([nowarn_export_all, export_all]).



-spec lists_map1([atom() | string()])
      -> [binary()].
lists_map1(L) ->
  lists:map(
    fun
      (A) when is_atom(A) ->
        atom_to_binary(A);
      (S) when is_list(S) ->
        list_to_binary(S)
    end,
    L
  ).
