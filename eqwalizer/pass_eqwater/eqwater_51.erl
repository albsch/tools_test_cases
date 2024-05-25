-module(eqwater_51).
-compile([nowarn_export_all, export_all]).



-record(union_field4, {
  x :: integer() | ok,
  y :: integer() | err
}).
-spec record_occ11
    (#union_field4{}) -> integer().
record_occ11(#union_field4{x = A, y = A}) -> A;
record_occ11(#union_field4{}) -> 0.
