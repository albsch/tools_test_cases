-module(eqwater_31).
-compile([nowarn_export_all, export_all]).

-spec non_linear_neg_1
    ({atom(), a | b}) -> b.
non_linear_neg_1({A, A}) -> b;
non_linear_neg_1({_, a}) -> b;
non_linear_neg_1({B, B}) -> B.
