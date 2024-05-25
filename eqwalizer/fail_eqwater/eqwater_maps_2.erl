-module(eqwater_maps_2).
-compile([nowarn_export_all, export_all]).



-spec map_occ_06_neg(#{a => integer()} | ok) -> ok.
map_occ_06_neg(#{a := I}) when is_integer(I) -> ok;
map_occ_06_neg(V) -> V.
