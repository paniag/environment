## .bashrc
## Mac Radigan

  ## basic
  set -o vi

  ## configuration
  alias re='. ~/.bashrc'
  alias conf='vi ~/.bashrc'

  for fn in `find ~/.sh/ -type f -name "*.env"`; do
    . $fn
  done

  fn=~/.sh/os.env-`uname`
  if [ -f $fn ]; 
  then
   . $fn
  fi
  alias oconf="vi $fn"

  fn=~/.`uname -n`.alias
  if [ -f $fn ]; 
  then
   . $fn
  fi
  alias aconf="vi $fn"

## *EOF*
