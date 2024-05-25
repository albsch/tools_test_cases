-module(eqwater_13).
-compile([nowarn_export_all, export_all]).

-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-record(c, {id :: atom()}).
-record(triple_union, {
    field :: #a{} | #b{} | #c{}
}).

% Do we want to support this?
-spec triple_union_occ2
    (#triple_union{}) -> atom().
triple_union_occ2(#triple_union{field = R})
    when
        not is_record(R, a),
        not is_record(R, b)
    -> R#c.id;
triple_union_occ2({triple_union, B})
    when
        not is_record(B, a)
    -> B#b.id;
triple_union_occ2({triple_union, A})
    -> A#a.id.
    
-spec occ23_neg
  ({a, A} | {b, B}, fun((B) -> A)) -> A.
occ23_neg({a, A}, _) -> A;
occ23_neg({_, B}, F) -> F(B).
