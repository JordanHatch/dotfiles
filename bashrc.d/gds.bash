function vpn {
  UGDS="jordanhatch"
  case $1 in
      gh)
          echo "Connecting to Github VPN"
          echo "nameserver 192.168.9.1" | sudo tee /etc/resolver/gds >/dev/null
          sudo openconnect -b -q --no-cert-check -u $UGDS --usergroup github vpn.digital.cabinet-office.gov.uk >/dev/null
          ;;
      ah)
          echo "Connecting to Aviation House VPN"
          echo "nameserver 192.168.19.254" | sudo tee /etc/resolver/gds >/dev/null
          sudo openconnect -b -q --no-cert-check -u $UGDS --usergroup ah vpn.digital.cabinet-office.gov.uk >/dev/null
          ;;
      kill)
          echo "Killing openconnect"
          sudo pkill openconnect >/dev/null 2>&1
          echo "nameserver 192.168.19.254" | sudo tee /etc/resolver/gds >/dev/null
          ;;
      status)
          echo "The following openconnect VPNs are connected:"
          ps auxwww | grep openconnec[t] | awk '{print $NF, "is connected"}'
          ;;
      *)
          echo "You need to specify sky/gh/ah/kill/status"
          ;;
  esac
}
