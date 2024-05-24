Test suites from the following tools:

* `otp/dialyzer`

Notes:

* Structure is modified to fit into a countable test cases structure. Multiple test cases contained in a single module have been split up.
* Each tool is tested against its default configuration


Structure:

* dialyzer
    * fail.*
        * name of SUITE
            * either a single test case file `*.erl` should fail
            * or a grouped test case with multiple files in a folder should fail
    * pass.*
        * name of SUITE
            * either a single test case file `*.erl` should pass
            * or a grouped test case with multiple files in a folder should pass



