-module(tuple_union_1).
-compile([nowarn_export_all, export_all]).

-type t1() ::
    {msg, ok | err, arg}.
-type t2() ::
    {msg, ok, arg} | {msg, err, arg}.
% More complex with several incompatible tuples
-type t3() ::
    {msg, ok, arg} | {msg, err} | {foo, ok, argfoo} | {msg, err, arg}.
% We do not handle doubly-factorisable unions
-type t4() ::
    {msg, ok | err, arg | nil}.
-type t5() ::
    {msg, ok, arg} | {msg, err, arg} | {msg, ok, nil} | {msg, err, nil}.
% Aliases
-type t6a() ::
  {msg, ok, arg}.
-type t6b() ::
  {msg, err, arg}.
-type t6() ::
  t6a() | t6b().
% Recursive types
-type tree1() ::
  {leaf, atom()}
  | {b1, tree1()}
  | {b2, tree1()}.
-type branch() :: b1 | b2.
-type tree2() ::
  {leaf, atom()}
  | {branch(), tree2()}.
-type tree3() ::
  {leaf, atom()}
  | {b1 | b2 | b3, tree2()}.

-spec test_01(t1 ()) -> t2().
test_01(X) -> X.
