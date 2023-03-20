# Softether Cascading VPN
We create a simple bash script to run your vpn service and tunnels.
## Requirements:
1. **One server In IRAN (INSIDE):** 
    <p>except arvancloud you can buy your Iran Server from any providers in Iran.</p>

2. **Another server Out of IRAN (OUTSIDE):**
   <p>I recommend buy it from https://cryptovps.host/</p>
   
3. **Install git**

   ``` apt update -y;apt install git -y```
   
## Clone this repository on your **Outside** machine
ssh to your **outside** machine and execute following commands with root user

```
git clone https://github.com/mrtshoot/antifilter-tools-sevpn
cd antifilter-tools-sevpn
chmod +x run.sh
bash run.sh
```
Answer the interactive questions and wait for the process to finish.
and then copy the certificate in your openvpn-sample.ovpn file instead of MYCERTIFICATE between BEGIN and END sections and your inside server ip address instead of INSIDE_IP.

## Configure your Softether Outside
1. Spinning up a temporary windows client(7,8,10,...) but if you are already a windows client you don't need to spinning a new one.
2. Download Softether VPN Server from https://drive.google.com/file/d/1PhoaS69fYDoVv-IgYjUoBZ8UGfbKdYgm/view?usp=share_link and install it.
3. At first connect to your outside server. so open softether vpn server and click on new setting and do as the following picture:
![1](https://user-images.githubusercontent.com/56720170/226371171-0408a7e4-e146-413f-9040-6d0d950ff99f.png)
4. Then open your new connection and set your password on it.
5. The wizard has been displayed so first of all clic on Site-to-Site as follow
![2](https://user-images.githubusercontent.com/56720170/226372483-f8f616a0-1e74-4f66-a7c6-9d9c021353fa.png)
6. Then create your virtualhub **VPN**.
7. Skip all unnecessary steps(Exit DNS, Disable Azure,..)
8. Select your NIC

![3](https://user-images.githubusercontent.com/56720170/226373404-2c17535e-3125-4f55-92de-1214d00df8d3.png)

9. Click on Manage your virtual hub
10. Click on Virtual NAT and Dirtual DHCP Server(Secure NAT)
11. Enable Secure NAT
12. Click on Manage your virtual hub again.
13. Go to Manage user and create user with password such as follow
![4](https://user-images.githubusercontent.com/56720170/226374988-8769165e-c18a-484c-8442-60b2cd26d62e.png)

## Configure your Softether Inside
1. connect to your inside server.create new setting as mentioned for outside.
2. On wizard click on site-to-site but as VPN Bridge
![5](https://user-images.githubusercontent.com/56720170/226376131-194bf703-5164-48f7-a0bb-cb09824fe36c.png)
3. Create virtual hub **VPN** and skip unnecessary steps again.
4. Click on Step2 and Configure Connection setting for cascading
![6](https://user-images.githubusercontent.com/56720170/226376894-678cc381-6de3-4c59-8e15-3d9a9416ed9c.png)
5. Click New and add Connection and add datas as follow
![7](https://user-images.githubusercontent.com/56720170/226377650-450c1138-a023-4cbf-bd24-d1624a255ddc.png)
6. Then Click on Manage Virtual Hub and Create user here for your users.

## Donate: 
