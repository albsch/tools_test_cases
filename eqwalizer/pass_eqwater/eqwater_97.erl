-module(eqwater_97).
-compile([nowarn_export_all, export_all]).



-spec occ49(
    integer() | undefined,
    integer() | undefined
) -> {integer(), integer()}.
occ49(A1, A2) ->
  case {A1, A2} of
    {undefined, undefined} ->
      {0, 0};
    {undefined, _} ->
      {0, A2};
    {_, undefined} ->
      {A1, 0};
    _ ->
      {A1, A2}
  end.
  
-spec occ50
    (ok, integer() | undefined)
    -> integer().
occ50(_, undefined) -> 0;
occ50(_, I) -> I.
