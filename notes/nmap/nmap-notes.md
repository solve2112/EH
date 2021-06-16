## When port scanning with Nmap, there are three basic scan types. These are:

* TCP Connect Scans (-sT)
	* A TCP Connect scan works by performing the three-way handshake with each target port in turn. In other words, Nmap tries to connect to each specified TCP port, and determines whether the service is open by the response it receives.
		* It is possible to configure iptables to respond to a SYN with an RST TCP packet.
* SYN "Half-open" Scans (-sS)
	* SYN scans are used to scan the TCP port-range of a target or targets; however, the two scan types work slightly differently. SYN scans are sometimes referred to as "Half-open" scans, or "Stealth" scans.
	* Where TCP scans perform a full three-way handshake with the target, SYN scans sends back a RST TCP packet after receiving a SYN/ACK from the server (this prevents the server from repeatedly trying to make the request). In other words, the sequence for scanning an open port looks like this:
		* Requires admin privs 
* UDP Scans (-sU)
	* Unlike TCP, UDP connections are stateless. This means that, rather than initiating a connection with a back-and-forth "handshake", UDP connections rely on sending packets to a target port and essentially hoping that they make it. 
		* much slower


## Additionally there are several less common port scan types, some of which we will also cover (albeit in less detail). These are:

   * TCP Null Scans (-sN)
   * TCP FIN Scans (-sF)
   * TCP Xmas Scans (-sX)
	* Used for firewall evasion

nmap -sn is a ping sweep

## nmap nse

nmap website (https://nmap.org/nsedoc/)

/usr/share/nmap/scripts
