-module(dict_use_10).
-compile([nowarn_export_all, export_all]).

w9() ->
  dict:store(42, elli,
	     {dict,0,16,16,8,80,48,
	           {[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]},
	           {{[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]}}}).
