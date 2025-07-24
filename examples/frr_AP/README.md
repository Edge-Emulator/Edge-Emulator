# Introduction
This topology integrates an Access Point (AP) into the original FRRouting (FRR) topology. The AP is connected as follows:

**AP --> enp0s25 --> br0 --> router8:eth3**

# AP Configuration
- **SSID**: Zee123  
- **Password**: Cisco123  
- **IP Address**: 172.22.228.244/24  

# Preparation Steps
Follow these steps to set up your environment:

1. **Connect the AP**  
   Connect the AP's switch side to your workstation's Ethernet interface.

2. **Connect your client**  
   Connect your client device (laptop, mobile phone) to the SSID. Manually set the IP address:
   - **IP Address**: 172.22.228.21/24  
   - **Gateway**: 172.22.228.1  

3. **Create a bridge on your host laptop**  
   Run the following command to create a bridge:
   ```bash
   sudo brctl addbr br0
4. **Connect the Ethernet interface to the bridge**
   Use this command to add your Ethernet interface to the bridge:
   ```bash
   sudo brctl addif br0 ens0p25
5. **Add a route to the bridge**
   Finally, add the route into the bridge using::
   ```bash
   sudo ip route add 172.22.228.0/24 dev br0

# Deploy TOPO
run the file topo.sh. it will pull the images and build the topology by container lab

# Attention
Due to my fixed AP configuration, I connected the eth3 port of router8 to the AP, which required changing its IP address to ensure they are on the same subnet. I also updated the BGP configuration on router2(BGP famaly network), client16 and edge server4(router ip).

Ceos version： I found the ceos version maybe to low and can not deploy in some device. so if you can not deploy the topo, you can try to replace the ceos with a higher version.

# Check
If everything goes smoothly, devices such as computers or smartphones should be able to connect to the AP, can ping client16 and edge server4 and recieve respond. Additionally, client16 and edge server4 should be able to ping the mobile devices or computers, although responses may not always be received.
