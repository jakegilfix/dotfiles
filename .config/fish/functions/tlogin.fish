function tlogin --description 'Teleport login to a cluster'
  set cluster $argv[1]
 
  if test -z "$cluster"
    echo "Cluster not set"
    echo "Run: tlogin {{ CLUSTER }}, where {{ CLUSTER }} is prod, stage or dev"
    return 0
  end
 
  if test "$cluster" = "prod"
    set cluster "keyhole"
  end
 
  echo "Connecting to teleport.core.affirm-$cluster.com"
  tsh login --proxy=teleport.core.affirm-$cluster.com:443
end
