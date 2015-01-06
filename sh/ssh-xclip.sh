 # [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | xclip #  Mac os not work
 [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy && echo 'id_rsa.pub cp ok'