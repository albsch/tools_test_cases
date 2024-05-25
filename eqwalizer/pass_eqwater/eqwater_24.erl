-module(eqwater_24).
-compile([nowarn_export_all, export_all]).



-spec occ09(atom()) -> boolean() | undef.
occ09(X) when is_boolean(X) -> X;
occ09(_) -> undef.
