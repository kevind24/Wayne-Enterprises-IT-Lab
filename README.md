# Wayne Enterprises IT Lab

## Enterprise Endpoint & Identity Lab

A hands-on enterprise IT lab designed to simulate a hybrid Microsoft environment using Windows Server, Active Directory, Microsoft Entra ID, Microsoft Intune, Microsoft 365, and Windows 11.

The environment represents a fictional Wayne Enterprises organization and uses a Batman-inspired naming convention while implementing real-world enterprise identity, endpoint management, networking, security, and troubleshooting concepts.

---

## Project Objectives

This project was built to develop hands-on experience with:

* Active Directory Domain Services (AD DS)
* Microsoft Entra ID
* Microsoft Entra Connect
* Microsoft Intune
* Microsoft 365
* Exchange Online
* Hybrid Microsoft Entra Join
* Windows 11 endpoint management
* Group Policy
* DNS
* File services and NTFS permissions
* Hyper-V virtualization
* Microsoft Defender
* Windows Firewall
* BitLocker
* Conditional Access
* Multifactor Authentication (MFA)
* Windows Update management
* Application deployment
* PowerShell
* Enterprise troubleshooting

---

## Architecture

The lab uses a hybrid architecture combining a local Hyper-V environment with Microsoft cloud services.

The on-premises environment is hosted on a Windows 11 Pro Hyper-V system named `WATCHTOWER`. A Windows Server 2022 virtual machine named `BAT-DC01` provides Active Directory Domain Services, DNS, Group Policy, file services, and Microsoft Entra Connect.

Four Windows 11 virtual machines simulate managed enterprise endpoints.

Microsoft Entra Connect synchronizes identities between the on-premises Active Directory environment and Microsoft Entra ID using Password Hash Synchronization.

Windows endpoints are Hybrid Microsoft Entra joined and automatically enrolled into Microsoft Intune for cloud-based endpoint management.

Microsoft 365 provides Exchange Online and additional cloud services.

### Final Architecture & Network Diagram

![Wayne Enterprises IT Lab Architecture](./architecture/Architecture%20Diagram%20V5.png)

### Hybrid Identity & Endpoint Management Flow

![Wayne Enterprises Identity Flow](./architecture/Identity%20Flow%20Diagram.png)

Editable draw.io source files for both diagrams are available in the [`architecture`](./architecture) directory.

---

## Lab Environment

### Hyper-V Host

**WATCHTOWER**

* Windows 11 Pro
* Hyper-V
* Hosts the Windows Server and Windows 11 virtual machines
* Provides NAT connectivity for the isolated lab network

### Domain Controller

**BAT-DC01**

* Windows Server 2022
* Active Directory Domain Services
* DNS
* Group Policy
* File Services
* Microsoft Entra Connect

### Active Directory Domain

`BATCAVE.LOCAL`

---

## Network

The Hyper-V environment uses an isolated internal network with NAT connectivity to external services.

| Component | Configuration |
| --- | --- |
| Network | `192.168.10.0/24` |
| Gateway / NAT | `192.168.10.1` |
| Domain Controller | `192.168.10.10` |
| Internal DNS | `192.168.10.10` |
| DNS Forwarder | `1.1.1.1` |

Domain-joined workstations use `BAT-DC01` for DNS resolution. External DNS requests are forwarded by the domain controller.

---

## Users and Access Model

| User | Role | Access Level |
| --- | --- | --- |
| Bruce Wayne | Employee | Standard User |
| Bruce Wayne Admin (`bwayne.admin`) | Administrative Account | IT / Server Administration |
| Dick Grayson | Employee | Standard User |
| Alfred Pennyworth | Executive Support | Standard User |
| Barbara Gordon | Technical User | IT Administration |
| James Gordon | Restricted User | Limited / Restricted Access |

The environment follows a least-privilege model. Bruce Wayne uses a standard account for normal activity and a separate privileged account for administrative tasks.

Administrative permissions are delegated through security groups rather than providing unnecessary domain-level privileges.

---

## Windows Endpoints

| User | Workstation |
| --- | --- |
| Bruce Wayne | `BAT-WIN11-BRUCE` |
| Dick Grayson | `BAT-WIN11-DICK` |
| Alfred Pennyworth | `BAT-WIN11-AL` |
| Barbara Gordon | `BAT-WIN11-BARB` |

The Windows 11 endpoints are hosted as Hyper-V virtual machines and joined to the `BATCAVE.LOCAL` Active Directory domain.

The endpoints are also Hybrid Microsoft Entra joined and managed through Microsoft Intune.

---

## Identity Architecture

The lab integrates traditional Active Directory identity with Microsoft Entra ID.

Key identity components include:

* Active Directory user and computer accounts
* Organizational Units (OUs)
* Security groups
* Separate standard and administrative accounts
* Microsoft Entra Connect
* Password Hash Synchronization
* Matching on-premises and cloud User Principal Names (UPNs)
* Hybrid Microsoft Entra joined devices
* Microsoft Entra multifactor authentication
* Conditional Access

Microsoft Entra Connect synchronizes the Wayne Enterprises Active Directory identities to Microsoft Entra ID while Active Directory remains responsible for the on-premises domain environment.

---

## Microsoft Intune

Microsoft Intune provides cloud-based management of the Windows 11 endpoints.

Implemented capabilities include:

* Automatic MDM enrollment
* Device compliance policies
* Windows configuration policies
* Windows security baselines
* Microsoft Defender Antivirus policies
* Windows Firewall policies
* BitLocker configuration
* Windows Update rings
* Application deployment
* Company Portal deployment

A dedicated device group is used to target management policies to the Wayne Enterprises Windows endpoints.

---

## Microsoft 365

Microsoft 365 Business Premium provides cloud services for the lab.

Implemented services include:

* Microsoft Entra ID
* Microsoft Intune
* Exchange Online
* Outlook
* User licensing
* Cloud identity integration
* Security groups
* Multifactor authentication
* Conditional Access

---

## File Services

`BAT-DC01` provides departmental file shares used to practice SMB sharing, NTFS permissions, security groups, and least-privilege access.

Configured shares include:

* WayneCorp
* IT
* Security
* Executive

Access was validated using multiple user accounts to confirm that authorized users could access the appropriate resources while unauthorized users received access-denied responses.

---

## Security

The lab implements multiple endpoint and identity security controls, including:

* Least-privilege administration
* Separate administrative accounts
* Microsoft Entra multifactor authentication
* Conditional Access
* Microsoft Defender Antivirus
* Windows Firewall
* BitLocker
* Secure Boot
* TPM validation
* Windows security baselines
* Device compliance policies
* Password and account-lockout policies

Some virtualization-dependent security settings, including Virtualization-Based Security (VBS) and Hypervisor-Enforced Code Integrity (HVCI), were intentionally left unconfigured where they produced compatibility issues within the virtualized lab environment.

---

## Troubleshooting

The project includes hands-on troubleshooting exercises covering:

* DNS resolution
* Domain authentication
* File-share permissions
* Microsoft Intune enrollment
* Application deployment
* Windows Update

Troubleshooting follows a structured methodology:

1. Identify and reproduce the symptom
2. Establish the expected state
3. Determine the affected technical layer
4. Gather diagnostics
5. Identify the root cause
6. Apply the smallest appropriate remediation
7. Validate functionality
8. Document the result

Detailed troubleshooting methodology and scenarios are available in [`documentation/troubleshooting-methodology.md`](./documentation/troubleshooting-methodology.md).

---

## Implementation Screenshots

Implementation screenshots provide evidence of the configuration and validation of the Wayne Enterprises hybrid IT environment.

The complete screenshot set is available in the [`screenshots`](./screenshots) directory.

---

## PowerShell

PowerShell was used for Active Directory administration, endpoint network and DNS validation, and Microsoft Entra Connect synchronization.

Documented commands and the Entra Connect delta synchronization script are available in the [`scripts`](./scripts) directory.

---

## Documentation

Project documentation includes:

* [Architecture and identity flow diagrams](./architecture)
* [Active Directory design](./documentation/active-directory-design.md)
* [Major configurations](./documentation/major-configurations.md)
* [Troubleshooting methodology and scenarios](./documentation/troubleshooting-methodology.md)
* [Lessons learned](./documentation/lessons-learned.md)
* [Implementation screenshots](./screenshots)
* [PowerShell scripts and administrative commands](./scripts)

Sensitive information such as passwords, authentication secrets, BitLocker recovery keys, private keys, tokens, and other credentials is not intended to be committed to the repository.

---

## Project Status

🟡 **Final Review**

### Current Phase

**Phase 10 — Portfolio Documentation**

Core infrastructure, hybrid identity, Windows endpoint deployment, Microsoft Intune management, security configuration, troubleshooting exercises, diagrams, screenshots, configuration documentation, lessons learned, and PowerShell examples have been completed.

The sensitive-information review has been completed. The remaining work consists of the final repository review before the project is marked complete.

---

## Disclaimer

Wayne Enterprises and the associated characters are used as fictional themes for this educational lab. The technical configurations and procedures are intended to demonstrate enterprise IT concepts and are not affiliated with DC Comics or Warner Bros.
