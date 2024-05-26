-module(fault_tolerance_1).
-compile([nowarn_export_all, export_all]).



-spec b_to_n(boolean()) ->
  number().
b_to_n(false) ->
  0;
b_to_n(true) ->
  1.
