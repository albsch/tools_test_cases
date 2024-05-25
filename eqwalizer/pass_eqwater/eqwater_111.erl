-module(eqwater_111).
-compile([nowarn_export_all, export_all]).



-spec non_linear_3
    ({atom(), a | b}) -> b.
non_linear_3({_, a}) -> b;
non_linear_3({A, A}) -> b;
non_linear_3({_, B}) -> B.
