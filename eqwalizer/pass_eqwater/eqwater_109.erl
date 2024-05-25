-module(eqwater_109).
-compile([nowarn_export_all, export_all]).



-spec non_linear_1
    ({atom(), a | b}) -> b.
non_linear_1({A, A}) -> b;
non_linear_1({_, a}) -> b;
non_linear_1({_, B}) -> B.
