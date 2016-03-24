#!/usr/bin/env escript
%%! -name gettoken@test -setcookie cookie4

main([GR_Node, UID]) ->
    Token = rpc:call(list_to_atom(GR_Node), auth_logic, gen_token, [list_to_binary(UID)]),
    io:format(Token).