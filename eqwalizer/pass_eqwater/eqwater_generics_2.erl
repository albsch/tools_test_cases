-module(eqwater_generics_2).
-compile([nowarn_export_all, export_all]).



-spec lists_map2([atom() | string()])
      -> [binary()].
lists_map2(L) ->
  lists:map(
    fun
      (A) when is_atom(A) ->
        atom_to_binary(A);
      (S) ->
        list_to_binary(S)
    end,
    L
  ).
