# factorial_server.erl
A small OTP application demonstrating a simple factorial gen_server.

```sh
$ rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling factorial
Erlang/OTP 24 [erts-12.0.3] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1] [jit]

Eshell V12.0.3  (abort with ^G)
1> ===> Booted factorial
1> factorial_server:factorial(50). 
30414093201713378043612608166064768844377641568960512000000000000
```
