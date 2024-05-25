-module(eqwater_aliases_2).
-compile([nowarn_export_all, export_all]).



-type occ01_in() :: a | b.
-type occ01_out() :: b.
-spec occ01_cl
(occ01_in()) -> occ01_out().
occ01_cl(a) -> b;
occ01_cl(B) -> B.
