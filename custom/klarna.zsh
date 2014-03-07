##--- begin *KRED-PATHS* ---
export ORIG_PATH=`echo $PATH | sed "s*/home/steve/klarna/erlangR14:**"`
# Make sure to use kernel_poll
export KRED_POLL=true

function r14() {
  export PATH="/home/steve/klarna/erlangR14/bin:$ORIG_PATH"
  export DIALYZER_PLT="/home/steve/klarna/dev/dialyzer_kred.plt"
  export ERL_TOP="/home/steve/klarna/erlangR14"
  echo "Active Erlang location: " `which erl`
  echo "type stderl in console to switch to system-wide installed Erlang"
}

function r15() {
  export PATH="/home/steve/klarna/erlangR15/bin:$ORIG_PATH"
  export DIALYZER_PLT="/home/steve/klarna/dev/dialyzer_kred.plt"
  export ERL_TOP="/home/steve/klarna/erlangR15"
  echo "Active Erlang location: " `which erl`
  echo "type stderl in console to switch to system-wide installed Erlang"
}

function stderl() {
  export PATH="${ORIG_PATH}"
  echo "Active Erlang location: " `which erl`
  echo "type r14b03 in console to switch to Klarna's Erlang"
  unset ERL_TOP
  unset DIALYZER_PLT
}

# Use Klarna Erlang by default, or face the consequences!

##--- end *KRED-PATHS* ---

##---- begin *KRED-INETRC* ---
export ERL_INETRC=/home/steve/.inetrc
##---- end *KRED-INETRC* ---

#r15
#

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
export PATH=./node_modules/.bin:$PATH
