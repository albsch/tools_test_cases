-module(t_maps_53).
-compile([nowarn_export_all, export_all]).

-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-type foo_bar(F, B) :: #{foo := F, bar := B}.
-type foo_bar_opt(F, B) :: #{foo => F, bar => B}.
-type kv(K, V) :: #{K => V}.
-type rec_shape() :: #{ item := rec_shape() | undefined }.
-type rec_shape_v2() :: #{ item_v2 := rec_shape_v2() | undefined }.
-type gen_shape(T) :: #{ item := T | gen_shape(T) }.
-type gen_shape_v2(T) :: #{ item_v2 := T | gen_shape_v2(T) }.
-type gen_shape_expanded(T) :: #{ item := T | #{ item := T | gen_shape_expanded(T) } }.

-spec kvs(kv(K1, V1), K2, V2) ->
    kv(K1 | K2, V1 | V2).
kvs(Dict, K2, V2) ->
    Dict#{K2 => V2}.
