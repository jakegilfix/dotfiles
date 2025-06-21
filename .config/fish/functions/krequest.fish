function krequest --wraps=open\ -a\ /Applications/Firefox.app\ -g\ \'https://kibana.affirm-keyhole.com/s/care-engineering/app/discover\#/\?_g=\(filters:!\(\),refreshInterval:\(pause:!t,value:60000\),time:\(from:now-15m,to:now\)\)\&_a=\(columns:!\(url.path,http.response.status_code,http.request.headers.x-request-id\),filters:!\(\),index:\'82c7671b-b865-546a-95dd-00999163bb58\',interval:auto,query:\(language:kuery,query:\'\'\),sort:!\(!\(\'@timestamp\',desc\)\)\)\' --wraps='open -a /Applications/Firefox.app -g "$KIBANA_REQUEST_LOGS"' --description 'alias krequest open -a /Applications/Firefox.app -g "$KIBANA_REQUEST_LOGS"'
  open -a /Applications/Firefox.app -g "$KIBANA_REQUEST_LOGS" $argv
        
end
