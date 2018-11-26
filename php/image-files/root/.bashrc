cat <<'MSG'

    )       (
 ( /(     ) )\ )              )
 )\()) ( /((()/( (         ( /(   (     )
((_)\  )(_))/(_)))\ )  (   )\()) ))\   (
  ((_)((_) (_)) (()/(  )\ (_))/ /((_)  )\  
 / _ \|_  )/ __| )(_))((_)| |_ (_))  _((_))
| (_) |/ / \__ \| || |(_-<|  _|/ -_)| '  \()
 \___//___||___/ \_, |/__/ \__|\___||_|_|_|
                 |__/

MSG

echo "PHP version: ${PHP_VERSION}"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi
