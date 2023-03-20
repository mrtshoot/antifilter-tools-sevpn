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

## Configure your Softether Cascading
1. Spinning up a temporary windows client(7,8,10,...) but if you are already a windows client you don't need to spinning a new one.
2. Download Softether VPN Server from https://drive.google.com/file/d/1PhoaS69fYDoVv-IgYjUoBZ8UGfbKdYgm/view?usp=share_link and install it.
3. At first connect to your outside.as following picture
4. 
