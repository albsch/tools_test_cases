-module(fault_tolerance_5).
-compile([nowarn_export_all, export_all]).



-spec map_pair([{K, V}], fun ((K, V) -> {K, A})) -> [{K, A}].
map_pair(_, _) -> error(unimplemented).
