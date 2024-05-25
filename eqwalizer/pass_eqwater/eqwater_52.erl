-module(eqwater_52).
-compile([nowarn_export_all, export_all]).



-record(union_field4, {
  x :: integer() | ok,
  y :: integer() | err
}).
-spec record_occ12
    (#union_field4{}) -> integer().
record_occ12(#union_field4{_ = A}) -> A;
record_occ12(#union_field4{}) -> 0.
