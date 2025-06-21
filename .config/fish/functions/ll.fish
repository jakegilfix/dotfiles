function ll --wraps=ls --wraps='eza -alh --icons --color=always | bat' --description 'alias ll eza -alh --icons --color=always | bat'
  eza -alh --icons --color=always $argv | bat
        
end
