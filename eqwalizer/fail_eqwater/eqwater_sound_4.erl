-module(eqwater_sound_4).
-compile([nowarn_export_all, export_all]).

-spec fun_trick_neg(_T, U) -> U.
fun_trick_neg(X, _) when is_function(X, 0)
  -> X.
