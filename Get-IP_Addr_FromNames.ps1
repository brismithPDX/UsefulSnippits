$servers = get-content "host-list.txt"
foreach ($server in $servers) {
  $addresses = [System.Net.Dns]::GetHostAddresses($server)
  foreach($a in $addresses) {
    "{0},{1}" -f $server, $a.IPAddressToString
  }
}
