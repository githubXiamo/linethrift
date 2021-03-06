%%
%% Autogenerated by Thrift Compiler (0.14.0)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(sns_adaptor_service_thrift).
-behaviour(thrift_service).


-include("sns_adaptor_service_thrift.hrl").

-export([struct_info/1, function_info/2, function_names/0]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% getSnsFriends(This, SnsIdType, SnsAccessToken, StartIdx, Limit)
function_info('getSnsFriends', params_type) ->
  {struct, [{2, i32},
          {3, string},
          {4, i32},
          {5, i32}]}
;
function_info('getSnsFriends', reply_type) ->
  {struct, {'line_types', 'SnsFriends'}};
function_info('getSnsFriends', exceptions) ->
  {struct, [{1, {struct, {'line_types', 'TalkException'}}}]}
;
% getSnsMyProfile(This, SnsIdType, SnsAccessToken)
function_info('getSnsMyProfile', params_type) ->
  {struct, [{2, i32},
          {3, string}]}
;
function_info('getSnsMyProfile', reply_type) ->
  {struct, {'line_types', 'SnsProfile'}};
function_info('getSnsMyProfile', exceptions) ->
  {struct, [{1, {struct, {'line_types', 'TalkException'}}}]}
;
% postSnsInvitationMessage(This, SnsIdType, SnsAccessToken, ToSnsUserId)
function_info('postSnsInvitationMessage', params_type) ->
  {struct, [{2, i32},
          {3, string},
          {4, string}]}
;
function_info('postSnsInvitationMessage', reply_type) ->
  {struct, []};
function_info('postSnsInvitationMessage', exceptions) ->
  {struct, [{1, {struct, {'line_types', 'TalkException'}}}]}
;
function_info(_Func, _Info) -> erlang:error(function_clause).

function_names() -> 
  ['getSnsFriends', 'getSnsMyProfile', 'postSnsInvitationMessage'].

