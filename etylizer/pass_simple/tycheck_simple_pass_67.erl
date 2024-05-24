-module(tycheck_simple_pass_67).
-compile([nowarn_export_all, export_all]).

-spec my_plus({integer(), integer()}) -> integer(); ({float(), integer()}) -> float(); ({integer(), float()}) -> float(); ({float(), float()}) -> float().
my_plus({A, B}) -> A + B.
