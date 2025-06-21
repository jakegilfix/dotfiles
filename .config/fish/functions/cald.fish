function cald --wraps='gcalcli agenda --military (date "%m/%d/%y) (date -v+1d "%m/%d/%y)' --wraps='gcalcli agenda --military (date +%m/%d/%y) (date -v+1d +%m/%d/%y)' --description 'alias cald=gcalcli agenda --military (date +%m/%d/%y) (date -v+1d +%m/%d/%y)'
  gcalcli agenda --military (date +%m/%d/%y) (date -v+1d +%m/%d/%y) $argv
        
end
