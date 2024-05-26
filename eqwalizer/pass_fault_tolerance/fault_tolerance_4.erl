-module(fault_tolerance_4).
-compile([nowarn_export_all, export_all]).



% Error tolerance with fun args
-spec make_pair(K, number()) -> {K, number()}.
make_pair(K, V) -> {K, V}.
