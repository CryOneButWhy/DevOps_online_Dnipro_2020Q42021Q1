# Task 6.1
1. Creating infrastructure with 2 VMs and Host.  
VM1 has NAT and Internal network.  
![image](./screenshots/VM1_iface.png)  
VM2 has only internal network.  
![image](./screenshots/VM2_iface.png)  
2. Allowing to use forward of IPv4 packets in **/etc/sysctl.conf** file.  
![image](./screenshots/packet_forwarding.png)  
Creating rules in **iptables** on VM1.  
![image](./screenshots/VM1_iptables.png)  
In order to have rules in iptables saved after the reboot, it is required to install **iptables-persistance** package.  
After that, you will be able to save configuration in **/etc/iptables/rules.v4** file.  
![image](./screenshots/iptables-persistent.png)  
3. Checking routes for VM2.  
![image](./screenshots/VM2_routes.png)  
4. Checking access to Internet for VM2 by pinging **8.8.8.8**  
![image](./screenshots/ping_VM2.png)  
5. Checking which resource is used with IP address **8.8.8.8**  
![image](./screenshots/google_ip.png)  
This will work only on VM1 or Host as VM2 has no DNS resolver or hosts file with these values.  
6. Checking IP which belongs to **epam.com**  
![image](./screenshots/epam_com_ip.png)  
7. Determing default gateway for my Host.  
![image](./screenshots/default_gateway.png)  
![image](./screenshots/gateway_2.png)  
Routes for my Host machine  
![image](./screenshots/host_routes.png)  
8. Checking traceroute to google.com  
![image](./screenshots/google_traceroute.png)  
