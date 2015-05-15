run:
	rebar compile
	erl -pa ebin -pa deps/*/ebin -sasl errlog_type -noshell -eval "application:start(myapp)"

dbg:
	rebar compile
	erl -pa ebin -pa deps/*/ebin -eval "application:start(sasl), application:start(myapp)"

clean:
	rm -rf ebin/*
