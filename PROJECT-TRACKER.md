# Wayne Enterprises IT Lab — Project Tracker

## Project Status

**Overall Status:** 🟡 In Progress

**Current Phase:** Phase 1 — Microsoft Entra ID

---

## Phase 0 — Project Foundation - COMPLETE

* [x] Create GitHub repository
* [x] Create initial project documentation
* [x] Create architecture diagram
* [x] Create project tracker
* [x] Establish Azure account
* [x] Configure Azure cost management
* [x] Establish Microsoft 365 tenant
* [x] Verify Microsoft Entra ID
* [x] Evaluate Microsoft 365 Developer Program eligibility

---

## Phase 1 — Microsoft Entra ID - COMPLETE

* [x] Create Bruce Wayne account
* [x] Create Dick Grayson account
* [x] Create Alfred Pennyworth account
* [x] Create Barbara Gordon account
* [x] Create James Gordon account
* [x] Create security groups
* [x] Configure Bruce's least-privilege daily-use access
* [x] Configure standard-user access model
* [x] Configure James Gordon's limited external access
* [x] Verify user account status
* [x] Verify group memberships
* [x] Verify tenant default domain
* [x] Verify user sign-in
* [x] Document Entra ID configuration

---

## Phase 2 — Microsoft 365 / Exchange Online - COMPLETE

* [x] Activate Microsoft 365 Business Premium trial
* [x] Verify Microsoft Entra ID availability
* [x] Create Wayne Enterprises user accounts
* [x] Create Wayne Enterprises security groups
* [x] Configure user group memberships
* [x] Assign Microsoft 365 Business Premium licenses
* [x] Verify Exchange Online mailboxes
* [x] Validate Outlook access for all five users
* [x] Test internal mail flow — Bruce → Dick
* [x] Test internal mail flow — Dick → Bruce
* [x] Verify Microsoft 365 service health
* [ ] Document Microsoft 365 / Exchange Online configuration

---

## Phase 3 — Core Infrastructure - COMPLETE

* [x] Create/verify Wayne Enterprises resource group
* [x] Create/verify Batcave VNet
* [x] Create/verify server subnet
* [x] Configure Hyper-V host environment
* [x] Deploy BAT-DC01 as a local Hyper-V VM
* [x] Configure Windows Server
* [x] Install Active Directory Domain Services
* [x] Configure DNS
* [x] Create BATCAVE.LOCAL domain
* [x] Configure local workstation lab
* [x] Document hybrid architecture design

---

## Phase 4 — Active Directory - COMPLETE

* [x] Create OU structure
* [x] Create AD users
* [x] Create security groups
* [x] Configure group memberships
* [x] Configure Group Policy
* [x] Configure administrative permissions
* [x] Configure least-privilege access
* [x] Validate authentication

### Current Active Directory Structure

Domain:
BATCAVE.LOCAL

Organizational Units:

- Wayne Enterprises
  - Admin Accounts
  - Groups
  - Servers
  - Users
  - Workstations
    
User access follows a least-privilege model:

| User | Role | Access |
| --- | --- | --- |
| Bruce Wayne | Administrator | IT and Server Administration |
| Dick Grayson | Employee | Standard User |
| Alfred Pennyworth | Executive Support | Standard User |
| Barbara Gordon | Technical User | IT Administration |
| James Gordon | External User | Remote User Access |

---

### Phase 5 — File Shares & Permissions - COMPLETE

- [x] Create WayneCorp shared folder
- [x] Create IT share
- [x] Create Security share
- [x] Create Executive share
- [x] Configure share permissions
- [x] Configure NTFS permissions
- [x] Remove unintended `Users — Special` permissions from restricted shares
- [x] Test Dick Grayson access
- [x] Test Barbara Gordon access
- [x] Test Alfred Pennyworth access
- [x] Validate James Gordon restricted access
- [x] Confirm SMB access using `net use`
- [x] Verify read/write/delete permissions

#### Validation Results

| User | Share | Result |
|---|---|---|
| Dick Grayson | WayneCorp | Modify ✓ |
| Dick Grayson | IT | Access Denied ✓ |
| Barbara Gordon | IT | Modify ✓ |
| Alfred Pennyworth | Executive | Modify ✓ |
| James Gordon | IT | Access Denied ✓ |
| James Gordon | Security | Access Denied ✓ |
| James Gordon | Executive | Access Denied ✓ |

**Status: Phase 5 COMPLETE**

---

## Phase 6 — Windows Workstations - COMPLETE

### Workstation Deployment Environment

* [x] Install/configure Hyper-V
* [x] Create Windows 11 workstation VMs
* [x] Perform clean Windows 11 installation and create reusable generalized template
* [x] Configure workstation networking
* [x] Establish connectivity to BATCAVE.LOCAL Active Directory
* [x] Join workstations to BATCAVE.LOCAL
* [x] Configure baseline workstation settings
* [ ] Document workstation deployment process

### Bruce Wayne

* [x] Deploy BAT-WIN11-BRUCE
* [x] Configure Windows
* [x] Join device to BATCAVE.LOCAL
* [x] Validate standard-user access
* [x] Validate connectivity

### Dick Grayson

* [x] Deploy BAT-WIN11-DICK
* [x] Configure Windows
* [x] Join device to BATCAVE.LOCAL
* [x] Validate standard-user permissions

### Alfred Pennyworth

* [x] Deploy BAT-WIN11-AL
* [x] Configure Windows
* [x] Join device to BATCAVE.LOCAL
* [x] Validate standard-user permissions

### Barbara Gordon

* [x] Deploy BAT-WIN11-BARB
* [x] Configure Windows
* [x] Join device to BATCAVE.LOCAL
* [x] Validate domain-user access
---

## Phase 7 — Microsoft Intune

* [x] Configure Microsoft Intune tenant and MDM authority
* [x] Configure automatic Windows MDM enrollment
* [x] Configure Microsoft Entra Connect synchronization
* [x] Configure Hybrid Microsoft Entra Join
* [x] Configure Intune automatic enrollment Group Policy
* [x] Enroll Windows 11 domain workstations
* [x] Validate Hybrid Entra Join and Primary Refresh Token (PRT)
* [x] Validate Intune device enrollment and check-in
* [x] Create Windows compliance policy
* [x] Configure BitLocker compliance requirement
* [x] Back up BitLocker recovery keys to Microsoft Entra ID
* [x] Test compliance policy application
* [x] Validate workstation compliance in Microsoft Intune
* [x] Troubleshoot Hybrid Join, MDM enrollment, and compliance failures
* [ ] Create device groups
* [ ] Create configuration profiles
* [ ] Configure Windows security baseline
* [ ] Configure Windows Update policy
* [ ] Configure Microsoft Defender policies
* [ ] Deploy applications

---

## Phase 8 — Security

* [ ] Configure MFA
* [ ] Configure least-privilege access
* [ ] Configure Windows Firewall
* [ ] Configure Microsoft Defender
* [ ] Configure BitLocker where supported
* [ ] Validate Secure Boot/TPM considerations
* [ ] Configure Conditional Access
* [ ] Document security decisions

---

## Phase 9 — Troubleshooting

* [ ] Create DNS failure scenario
* [ ] Create domain authentication failure
* [ ] Create file-share permission failure
* [ ] Create Intune enrollment failure
* [ ] Create application deployment failure
* [ ] Create Windows Update issue
* [ ] Document troubleshooting methodology

---

## Phase 10 — Portfolio Documentation

* [ ] Final architecture diagram
* [ ] Final network diagram
* [ ] Identity flow diagram
* [ ] Add screenshots
* [ ] Document major configurations
* [ ] Document troubleshooting scenarios
* [ ] Document lessons learned
* [ ] Add PowerShell scripts
* [ ] Update README
* [ ] Review repository for sensitive information
* [ ] Final project review
