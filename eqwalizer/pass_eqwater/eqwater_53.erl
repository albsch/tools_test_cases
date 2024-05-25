-module(eqwater_53).
-compile([nowarn_export_all, export_all]).



-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-record(c, {id :: atom()}).
-record(triple_union, {
    field :: #a{} | #b{} | #c{}
}).
-spec triple_union_occ
    (#triple_union{}) -> atom().
triple_union_occ(#triple_union{field = R})
    when 
        not is_record(R, a), 
        not is_record(R, b)
    -> R#c.id;
triple_union_occ(#triple_union{field = R})
    when
        not is_record(R, a)
    -> R#b.id;
triple_union_occ(#triple_union{field = R})
    -> R#a.id.
    
-type refrec1() :: #refrec{z :: string()}.
-record(refrec, {
    z = undefined :: eqwalizer:refinable(undefined | string())
}).
-spec get_s(refrec1()) -> string().
get_s(#refrec{z = S}) -> S.
