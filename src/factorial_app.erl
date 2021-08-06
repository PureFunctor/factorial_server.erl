-module(factorial_app).
-behaviour(application).

-export([start/2, stop/1]).

%% Application Code

start(_StartType, _StartArgs) ->
    factorial_server:start_link().

stop(_State) ->
    factorial_server:stop().
