function tssh --description 'Teleport SSH'
  tsh status >/dev/null 2>&1
  if test $status -ne 0
    echo "Not logged in; To login type 'tlogin <env>' where <env> is dev, stage, or prod" && return 1
  end
 
  set login (tsh status | grep -m 1 Logins | awk '{print $2}' | cut -f 1 -d ",")
 
  tsh ssh -A $login@$argv[1] $argv[2..-1] || echo "Failed to login with username $login"
end
