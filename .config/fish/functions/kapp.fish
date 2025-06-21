function kapp --wraps='open -a /Applications/Firefox.app -g "$KIBANA_APP_LOGS"' --description 'alias kapp open -a /Applications/Firefox.app -g "$KIBANA_APP_LOGS"'
  open -a /Applications/Firefox.app -g "$KIBANA_APP_LOGS" $argv
        
end
