-module(eqwater_maps_1).
-compile([nowarn_export_all, export_all]).



-spec map_occ_01(#{a := integer()} | ok) -> ok.
map_occ_01(#{a := I}) when is_integer(I) -> ok;
map_occ_01(V) -> V.
