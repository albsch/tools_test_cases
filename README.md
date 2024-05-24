Test suite from commit `945c940f6bc6c0bcb026cdc6ae8f3ce358e859bb`

The test suite represents the ground truth for Dialyzer version v5.1.3.

Problem: What defaults to use?
We use default settings shipped with OTP 26.

If there are multiple test cases in one module, we split that file in multiple files.

Categories:

* Fail
* Pass
* Warning?


DISCUSS:

* pass_discuss/unmatched_returns_SUITE_data/lc_warnings_1.erl: Idiomatic erlang code has unmatched returns (e.g. inside list comprehensions); fail, pass, or both?
* fail_discuss/underspects_SUITE_data/opaque.erl: 
    * set is opaque, match against tuples
    * case exhaustiveness?
* fail_discuss/user_SUITE_data/wpc_hlines.erl: 
    * should pass?

Included:

* user_SUITE_data/gh6850.erl
* unmatched_returns_SUITE_data


Not included:

* abstract_SUITE.erl: tests cannot be written in Erlang itself
* dialyzer_cl_SUITE.erl: utility functions for dialyzer
* dialyzer_utils_SUITE.erl: utility functions for dialyzer
* erl_types_SUITE.erl: internal type representation tests
* incremental_SUITE.erl: tests for incremental checking
* typer_SUITE.erl: test cases for typer
* dialyzer_SUITE.erl, cplt_SUITE.erl, iplt_SUITE.erl: test internal PLT structure
* Test cases where written permission is needed
* Test cases that test tool option flags
* Test cases with >1000 LOC (mostly from user_SUITE_data)
* Test cases with custom instructions (-dialyzer...)

Roadmap:

* [] behaviour_SUITE_data
* [] callgraph_SUITE_data
* [] cplt_SUITE_data
* [] default_ignore_overlapping_contract_SUITE_data
* [] dialyzer_cl_SUITE_data
* [] extra_return_SUITE_data
* [] incremental_SUITE_data
* [] indent2_SUITE_data
* [] indent_SUITE_data
* [] iplt_SUITE_data
* [] line_SUITE_data
* [] map_SUITE_data
* [] missing_return_SUITE_data
* [] nowarn_function_SUITE_data
* [] opaque_SUITE_data
* [] options1_SUITE_data
* [] options2_SUITE_data
* [] options3_SUITE_data
* [] overlapping_contract_SUITE_data
* [] overspecs_SUITE_data
* [] r9c_SUITE_data
* [] small_SUITE_data
* [] specdiffs_SUITE_data
* [x] underspecs_SUITE_data
* [x] unmatched_returns_SUITE_data
* [x] user_SUITE_data