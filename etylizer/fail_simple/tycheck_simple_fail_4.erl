-module(tycheck_simple_fail_4).
-compile([nowarn_export_all, export_all]).

-spec atom_06_fail() -> foobar.
atom_06_fail() -> spam.
-spec char_04_fail() -> atom().
char_04_fail() -> $a.
