-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 02:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccna_answer`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `questions` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `questions`, `answer`) VALUES
(1, 'Which Layer 2 attack will result in legitimate users not getting valid IP addresses?', 'DHCP starvation'),
(2, 'What mitigation plan is best for thwarting a DoS attack that is creating a MAC address table overflow?', 'Enable port security.'),
(3, 'Which three Cisco products focus on endpoint security solutions? (Choose three.)', '1.Web Security Email 2.Security  3.NAC Appliance'),
(4, 'True or False? In the 802.1X standard, the client attempting to access the network is referred to as the supplicant.', 'true'),
(5, 'Which authentication method stores usernames and passwords in the router and is ideal for small networks?', 'local AAA'),
(7, 'What represents a best practice concerning discovery protocols such as CDP and LLDP on network devices?', 'Disable both protocols on all interfaces where they are not required.'),
(9, 'Which protocol should be used to mitigate the vulnerability of using Telnet to remotely manage network devices?', 'SSH'),
(10, 'Which statement describes the behavior of a switch when the MAC address table is full?', 'It treats frames as unknown unicast and floods all incoming frames to all ports within the local VLAN.'),
(12, ' What device is considered a supplicant during the 802.1X authentication process?', 'the client that is requesting authentication'),
(13, 'Refer to the exhibit. Port Fa0/2 has already been configured appropriately. The IP phone and PC work properly. Which switch configuration would be most appropriate for port Fa0/2 if the network administrator has the following goals?', 'SWA(config-if)# switchport port-security SWA(config-if)# switchport port-security maximum 2 SWA(config-if)# switchport port-security mac-address sticky'),
(14, 'Refer to the exhibit. Port security has been configured on the Fa 0/12 interface of switch S1. What action will occur when PC1 is attached to switch S1 with the applied configuration?', 'Frames from PC1 will cause the interface to shut down immediately, and a log entry will be made.'),
(15, 'Which type of VLAN-hopping attack may be prevented by designating an unused VLAN as the native VLAN?', 'VLAN double-tagging'),
(16, ' A network administrator is configuring DAI on a switch with the command ip arp inspection validate src-mac. What is the purpose of this configuration command?', 'It checks the source MAC address in the Ethernet header against the sender MAC address in the ARP body.'),
(22, 'Which two commands can be used to enable BPDU guard on a switch? (Choose two.)', '1.S1(config)# spanning-tree portfast bpduguard default 2.S1(config-if)# spanning-tree bpduguard enable'),
(23, 'As part of the new security policy, all switches on the network are configured to automatically learn MAC addresses for each port. All running configurations are saved at the start and close of every business day. A severe thunderstorm causes an extended power outage several hours after the close of business. When the switches are brought back online, the dynamically learned MAC addresses are retained. Which port security configuration enabled this?', 'sticky secure MAC addresses'),
(25, 'Which type of management frame may regularly be broadcast by an AP?', 'beacon'),
(26, ' What are the two methods that are used by a wireless NIC to discover an AP? (Choose two.)', '1.receiving a broadcast beacon frame 2.transmitting a probe request'),
(27, 'A technician is configuring the channel on a wireless router to either 1, 6, or 11. What is the purpose of adjusting the channel?', 'to avoid interference from nearby wireless devices'),
(29, 'While attending a conference, participants are using laptops for network connectivity. When a guest speaker attempts to connect to the network, the laptop fails to display any available wireless networks. The access point must be operating in which mode?', 'active'),
(30, 'A network administrator is required to upgrade wireless access to end users in a building. To provide data rates up to 1.3 Gb/s and still be backward compatible with older devices, which wireless standard should be implemented?', '802.11ac'),
(31, ' A technician is about to install and configure a wireless network at a small branch office. What is the first security measure the technician should apply immediately upon powering up the wireless router?', 'Change the default user-name and password of the wireless router.'),
(32, 'On a Cisco 3504 WLC dashboard, which option provides access to the full menu of features?', 'Advanced'),
(33, 'Which step is required before creating a new WLAN on a Cisco 3500 series WLC?', 'Create a new VLAN interface.'),
(34, 'A network engineer is troubleshooting a newly deployed wireless network that is using the latest 802.11 standards. When users access high bandwidth services such as streaming video, the wireless network performance is poor. To improve performance the network engineer decides to configure a 5 Ghz frequency band SSID and train users to use that SSID for streaming media services. Why might this solution improve the wireless network performance for that type of service?', 'The 5 GHz band has more channels and is less crowded than the 2.4 GHz band, which makes it more suited to streaming multimedia.'),
(35, 'A network administrator is configuring a RADIUS server connection on a Cisco 3500 series WLC. The configuration requires a shared secret password. What is the purpose for the shared secret password?', 'It is used to encrypt the messages between the WLC and the RADIUS server.'),
(36, 'Which three parameters would need to be changed if best practices are being implemented for a home wireless AP? (Choose three.)', '1. wireless network password 2.AP password 3.SSID'),
(37, 'Which access control component, implementation, or protocol is based upon usernames and passwords?', 'authentication'),
(38, 'Which type of wireless network is based on the 802.11 standard and a 2.4-GHz or 5-GHz radio frequency?', 'wireless local-area network'),
(39, 'Which two Cisco solutions help prevent DHCP starvation attacks? (Choose two.)', '1. DHCP Snooping 2.Port Security'),
(40, 'What are three techniques for mitigating VLAN attacks? (Choose three.)', '1.Enable trunking manually. 2.Disable DTP. 3.Set the native VLAN to an unused VLAN.'),
(41, 'Refer to the exhibit. What can be determined about port security from the information that is shown?', 'The port violation mode is the default for any port that has port security enabled.'),
(42, 'A network administrator of a college is configuring the WLAN user authentication process. Wireless users are required to enter username and password credentials that will be verified by a server. Which server would provide such service?', 'RADIUS'),
(43, 'A technician is troubleshooting a slow WLAN that consists of 802.11b and 802.11g devices . A new 802.11n/ac dual-band router has been deployed on the network to replace the old 802.11g router. What can the technician do to address the slow wireless speed?', 'Split the wireless traffic between the 802.11n 2.4 GHz band and the 5 GHz band.'),
(44, 'The company handbook states that employees cannot have microwave ovens in their offices. Instead, all employees must use the microwave ovens located in the employee cafeteria. What wireless security risk is the company trying to avoid?', 'accidental interference'),
(45, 'What is the function provided by CAPWAP protocol in a corporate wireless network?', 'CAPWAP provides the encapsulation and forwarding of wireless user traffic between an access point and a wireless LAN controller.'),
(46, 'Open the PT Activity. Perform the tasks in the activity instructions and then answer the question. Which event will take place if there is a port security violation on switch S1 interface Fa0/1?', 'Packets with unknown source addresses will be dropped.'),
(47, 'Match each functional component of AAA with its description. (Not all options are used.)', '1.authentication - proves that users are who they say they are. 2.authorization-determines what resources users can access or the operations they are allowed to perform. 3.accounting-records what user do and what they access.'),
(48, 'What are two protocols that are used by AAA to authenticate users against a central database of usernames and password? (Choose two.)', '1.TACACS+ 2.RADIUS'),
(49, 'What is the result of a DHCP starvation attack?', 'Legitimate clients are unable to lease IP addresses.'),
(50, 'Which feature or configuration on a switch makes it vulnerable to VLAN double-tagging attacks?', 'the native VLAN of the trunking port being the same as a user VLAN'),
(51, 'Which component of AAA allows an administrator to track individuals who access network resources and any changes that are made to those resources?', 'accounting'),
(52, 'Refer to the exhibit. PC1 and PC2 should be able to obtain IP address assignments from the DHCP server. How many ports among switches should be assigned as trusted ports as part of the DHCP snooping configuration?', '7'),
(53, 'An IT security specialist enables port security on a switch port of a Cisco switch. What is the default violation mode in use until the switch port is configured to use a different violation mode?', 'shutdown'),
(54, 'A laptop cannot connect to a wireless access point. Which two troubleshooting steps should be taken first? (Choose two.)', '1.Ensure that the wireless NIC is enabled. 2.Ensure that the wireless SSID is chosen.'),
(55, 'What is an advantage of SSID cloaking?​', 'Clients will have to manually identify the SSID to connect to the network.​'),
(56, 'What is a wireless security mode that requires a RADIUS server to authenticate wireless users?', 'enterprise'),
(57, 'A company has recently implemented an 802.11n wireless network. Some users are complaining that the wireless network is too slow. Which solution is the best method to enhance the performance of the wireless network?', 'Split the traffic between the 2.4 GHz and 5 GHz frequency bands.'),
(58, 'Which protocol can be used to monitor the network?', 'SNMP'),
(59, 'A network administrator deploys a wireless router in a small law firm. Employee laptops join the WLAN and receive IP addresses in the 10.0.10.0/24 network. Which service is used on the wireless router to allow the employee laptops to access the internet?', 'NAT'),
(60, 'Which service can be used on a wireless router to prioritize network traffic among different types of applications so that voice and video data are prioritized over email and web data?', 'QoS'),
(61, 'Which access control component, implementation, or protocol is based on device roles of supplicant, authenticator, and authentication server?', '802.1X'),
(62, 'Which type of wireless network is suitable for national and global communications?', 'wireless wide-area network'),
(63, 'Which feature on a switch makes it vulnerable to VLAN hopping attacks?', 'the automatic trunking port feature enabled for all ports by default'),
(64, 'Which component of AAA is used to determine which resources a user can access and which operations the user is allowed to perform?', 'authorization'),
(65, 'Refer to the exhibit. The Fa0/2 interface on switch S1 has been configured with the switchport port-security mac-address 0023.189d.6456 command and a workstation has been connected. What could be the reason that the Fa0/2 interface is shutdown?', 'The MAC address of PC1 that connects to the Fa0/2 interface is not the configured MAC address.'),
(66, 'A network administrator enters the following commands on the switch SW1. What is the effect after these commands are entered?', 'FastEthernet ports 5 through 10 can receive up to 6 DHCP discovery messages per second.'),
(67, 'A network administrator is configuring port security on a Cisco switch. The company security policy specifies that when a violation occurs, packets with unknown source addresses should be dropped and no notification should be sent. Which violation mode should be configured on the interfaces?', 'protect'),
(68, 'A network administrator is working to improve WLAN performance on a dual-band wireless router. What is a simple way to achieve a split-the-traffic result?', 'Make sure that different SSIDs are used for the 2.4 GHz and 5 GHz bands.'),
(69, 'Which access control component, implementation, or protocol controls what users can do on the network?', 'authorization'),
(70, 'Which type of wireless network is suitable for providing wireless access to a city or district?', 'wireless metropolitan-area network\r\n'),
(71, 'On a Cisco 3504 WLC Summary page ( Advanced > Summary ), which tab allows a network administrator to access and configure a WLAN for a specific security option such as WPA2?', 'WLANs'),
(72, 'What type of wireless antenna is best suited for providing coverage in large open spaces, such as hallways or large conference rooms?', 'omnidirectional'),
(73, 'What security benefit is gained from enabling BPDU guard on PortFast enabled interfaces?', 'preventing rogue switches from being added to the network'),
(74, 'Which access control component, implementation, or protocol logs EXEC and configuration commands configured by a user?', 'accounting'),
(75, ' ', ' '),
(76, 'Which type of wireless network uses transmitters to provide coverage over an extensive geographic area?', 'wireless wide-area network'),
(77, 'Which access control component, implementation, or protocol controls who is permitted to access a network?', 'authentication'),
(78, 'What two IEEE 802.11 wireless standards operate only in the 5 GHz range? (Choose two.)', '1.802.11ac 2.802.11a'),
(79, 'Which type of wireless network uses low powered transmitters for a short-range network, usually 20 to 30 ft. (6 to 9 meters)?', 'wireless personal-area network'),
(80, 'Which wireless network topology would be used by network engineers to provide a wireless network for an entire college building?', 'infrastructure'),
(81, ' ', ' '),
(82, 'Which type of wireless network uses transmitters to provide wireless service over a large urban region?', 'wireless metropolitan-area network'),
(83, 'Which type of wireless network is suitable for use in a home or office?', 'wireless local-area network'),
(84, 'Which access control component, implementation, or protocol indicates success or failure of a client-requested service with a PASS or FAIL message?', 'authorization'),
(85, 'Which type of wireless network often makes use of devices mounted on buildings?', 'wireless metropolitan-area network'),
(86, 'A network administrator is configuring DAI on a switch with the command ip arp inspection validate src-mac . What is the purpose of this configuration command?', 'It checks the source MAC address in the Ethernet header against the sender MAC address in the ARP body.'),
(87, 'Which access control component, implementation, or protocol collects and reports usage data?', 'accounting'),
(88, 'Which type of wireless network uses transmitters to cover a medium-sized network, usually up to 300 feet (91.4 meters)?', 'Wireless LANs (WLAN)'),
(89, 'Which access control component, implementation, or protocol audits what users actions are performed on the network?', 'Accounting'),
(90, 'Which type of wireless network commonly uses Bluetooth or ZigBee devices?', 'wireless personal-area network'),
(91, 'Which access control component, implementation, or protocol is implemented either locally or as a server-based solution?', 'authentication'),
(92, 'A technician is troubleshooting a slow WLAN and decides to use the split-the-traffic approach. Which two parameters would have to be configured to do this? (Choose two.)', '1.Configure the 5 GHz band for streaming multimedia and time sensitive traffic. 2.Configure the 2.4 GHz band for basic internet traffic that is not time sensitive.'),
(93, 'Which access control component, implementation, or protocol restricts LAN access through publicly accessible switch ports?', '802.1X');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
