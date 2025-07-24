#install containerlab
bash -c "$(curl -sL https://get.containerlab.dev)"

#install frr image
sudo docker pull zhen06199/ceos:4.28.0F

sudo docker pull zhen06199/debian-edge-server1:latest
sudo docker pull zhen06199/debian-edge-server2:latest
sudo docker pull zhen06199/debian-edge-server3:latest
sudo docker pull zhen06199/debian-edge-server4:latest
sudo docker pull zhen06199/debian-edge-server5:latest
sudo docker pull zhen06199/debian-edge-server6:latest
sudo docker pull zhen06199/debian-edge-server7:latest
sudo docker pull zhen06199/debian-edge-server8:latest

sudo docker pull zhen06199/debian-client1:latest
sudo docker pull zhen06199/debian-client2:latest
sudo docker pull zhen06199/debian-client3:latest
sudo docker pull zhen06199/debian-client4:latest
sudo docker pull zhen06199/debian-client5:latest
sudo docker pull zhen06199/debian-client6:latest
sudo docker pull zhen06199/debian-client7:latest
sudo docker pull zhen06199/debian-client8:latest
sudo docker pull zhen06199/debian-client9:latest
sudo docker pull zhen06199/debian-client10:latest
sudo docker pull zhen06199/debian-client11:latest
sudo docker pull zhen06199/debian-client12:latest
sudo docker pull zhen06199/debian-client13:latest
sudo docker pull zhen06199/debian-client14:latest
sudo docker pull zhen06199/debian-client15:latest
sudo docker pull zhen06199/debian-client16:latest
sudo docker pull zhen06199/debian-client17:latest
sudo docker pull zhen06199/debian-client18:latest
sudo docker pull zhen06199/debian-client19:latest
sudo docker pull zhen06199/debian-client20:latest
sudo docker pull zhen06199/debian-client21:latest
sudo docker pull zhen06199/debian-client22:latest
sudo docker pull zhen06199/debian-client23:latest
sudo docker pull zhen06199/debian-client24:latest
sudo docker pull zhen06199/debian-client25:latest

sudo docker pull zhen06199/frr-router1:latest
sudo docker pull zhen06199/frr-router2:latest
sudo docker pull zhen06199/frr-router3:latest
sudo docker pull zhen06199/frr-router4:latest
sudo docker pull zhen06199/frr-router5:latest
sudo docker pull zhen06199/frr-router6:latest
sudo docker pull zhen06199/frr-router7:latest
sudo docker pull zhen06199/frr-router8:latest
sudo docker pull zhen06199/frr-router9:latest

sudo docker tag zhen06199/ceos:4.28.0F ceos:4.28.0F

sudo docker tag zhen06199/debian-edge-server1:latest debian-edge-server1:latest
sudo docker tag zhen06199/debian-edge-server2:latest debian-edge-server2:latest
sudo docker tag zhen06199/debian-edge-server3:latest debian-edge-server3:latest
sudo docker tag zhen06199/debian-edge-server4:latest debian-edge-server4:latest
sudo docker tag zhen06199/debian-edge-server5:latest debian-edge-server5:latest
sudo docker tag zhen06199/debian-edge-server6:latest debian-edge-server6:latest
sudo docker tag zhen06199/debian-edge-server7:latest debian-edge-server7:latest
sudo docker tag zhen06199/debian-edge-server8:latest debian-edge-server8:latest

sudo docker tag zhen06199/debian-client1:latest debian-client1:latest
sudo docker tag zhen06199/debian-client2:latest debian-client2:latest
sudo docker tag zhen06199/debian-client3:latest debian-client3:latest
sudo docker tag zhen06199/debian-client4:latest debian-client4:latest
sudo docker tag zhen06199/debian-client5:latest debian-client5:latest
sudo docker tag zhen06199/debian-client6:latest debian-client6:latest
sudo docker tag zhen06199/debian-client7:latest debian-client7:latest
sudo docker tag zhen06199/debian-client8:latest debian-client8:latest
sudo docker tag zhen06199/debian-client9:latest debian-client9:latest
sudo docker tag zhen06199/debian-client10:latest debian-client10:latest
sudo docker tag zhen06199/debian-client11:latest debian-client11:latest
sudo docker tag zhen06199/debian-client12:latest debian-client12:latest
sudo docker tag zhen06199/debian-client13:latest debian-client13:latest
sudo docker tag zhen06199/debian-client14:latest debian-client14:latest
sudo docker tag zhen06199/debian-client15:latest debian-client15:latest
sudo docker tag zhen06199/debian-client16:latest debian-client16:latest
sudo docker tag zhen06199/debian-client17:latest debian-client17:latest
sudo docker tag zhen06199/debian-client18:latest debian-client18:latest
sudo docker tag zhen06199/debian-client19:latest debian-client19:latest
sudo docker tag zhen06199/debian-client20:latest debian-client20:latest
sudo docker tag zhen06199/debian-client21:latest debian-client21:latest
sudo docker tag zhen06199/debian-client22:latest debian-client22:latest
sudo docker tag zhen06199/debian-client23:latest debian-client23:latest
sudo docker tag zhen06199/debian-client24:latest debian-client24:latest
sudo docker tag zhen06199/debian-client25:latest debian-client25:latest

sudo docker tag zhen06199/frr-router1:latest frr-router1:latest
sudo docker tag zhen06199/frr-router2:latest frr-router2:latest
sudo docker tag zhen06199/frr-router3:latest frr-router3:latest
sudo docker tag zhen06199/frr-router4:latest frr-router4:latest
sudo docker tag zhen06199/frr-router5:latest frr-router5:latest
sudo docker tag zhen06199/frr-router6:latest frr-router6:latest
sudo docker tag zhen06199/frr-router7:latest frr-router7:latest
sudo docker tag zhen06199/frr-router8:latest frr-router8:latest
sudo docker tag zhen06199/frr-router9:latest frr-router9:latest

sudo docker rmi zhen06199/ceos:4.28.0F

sudo docker rmi zhen06199/debian-edge-server1:latest
sudo docker rmi zhen06199/debian-edge-server2:latest
sudo docker rmi zhen06199/debian-edge-server3:latest
sudo docker rmi zhen06199/debian-edge-server4:latest
sudo docker rmi zhen06199/debian-edge-server5:latest
sudo docker rmi zhen06199/debian-edge-server6:latest
sudo docker rmi zhen06199/debian-edge-server7:latest
sudo docker rmi zhen06199/debian-edge-server8:latest

sudo docker rmi zhen06199/debian-client1:latest
sudo docker rmi zhen06199/debian-client2:latest
sudo docker rmi zhen06199/debian-client3:latest
sudo docker rmi zhen06199/debian-client4:latest
sudo docker rmi zhen06199/debian-client5:latest
sudo docker rmi zhen06199/debian-client6:latest
sudo docker rmi zhen06199/debian-client7:latest
sudo docker rmi zhen06199/debian-client8:latest
sudo docker rmi zhen06199/debian-client9:latest
sudo docker rmi zhen06199/debian-client10:latest
sudo docker rmi zhen06199/debian-client11:latest
sudo docker rmi zhen06199/debian-client12:latest
sudo docker rmi zhen06199/debian-client13:latest
sudo docker rmi zhen06199/debian-client14:latest
sudo docker rmi zhen06199/debian-client15:latest
sudo docker rmi zhen06199/debian-client16:latest
sudo docker rmi zhen06199/debian-client17:latest
sudo docker rmi zhen06199/debian-client18:latest
sudo docker rmi zhen06199/debian-client19:latest
sudo docker rmi zhen06199/debian-client20:latest
sudo docker rmi zhen06199/debian-client21:latest
sudo docker rmi zhen06199/debian-client22:latest
sudo docker rmi zhen06199/debian-client23:latest
sudo docker rmi zhen06199/debian-client24:latest
sudo docker rmi zhen06199/debian-client25:latest

sudo docker rmi zhen06199/frr-router1:latest
sudo docker rmi zhen06199/frr-router2:latest
sudo docker rmi zhen06199/frr-router3:latest
sudo docker rmi zhen06199/frr-router4:latest
sudo docker rmi zhen06199/frr-router5:latest
sudo docker rmi zhen06199/frr-router6:latest
sudo docker rmi zhen06199/frr-router7:latest
sudo docker rmi zhen06199/frr-router8:latest
sudo docker rmi zhen06199/frr-router9:latest

sudo docker tag debian-edge-server5 debian-edited:latest

#deploy clab
sudo clab deploy

#configure client and edge server
sudo ./client-interfaces2.sh
