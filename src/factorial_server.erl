-module(factorial_server).
-behaviour(gen_server).

-export([init/1, handle_call/3, handle_cast/2, start_link/0, stop/0]).
-export([factorial/1, factorial/2]).

%% Backend Code

factorial(Number) ->
    gen_server:call(?MODULE, {factorial, Number}).

factorial(0, A) -> A;
factorial(N, A) -> factorial(N - 1, N * A).

%% Server Code

start_link() ->
    gen_server:start_link({local, factorial_server}, factorial_server, [], []).

stop() ->
    gen_server:cast(factorial_server, stop).

init([]) ->
    {ok, ok}.

handle_call({factorial, Number}, _From, State) ->
    {reply, factorial(Number, 1), State}.

handle_cast(stop, State) ->
    {stop, normal, State}.
