# Wayne Enterprises IT Lab — Project Tracker

## Project Status

**Overall Status:** 🟢 Complete

**Current Phase:** Project Complete

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
* [x] Configure James Gordon as a restricted user
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

---

## Phase 3 — Core Infrastructure - COMPLETE

* [x] Configure Hyper-V host environment on WATCHTOWER
* [x] Create BATCAVE virtual network and NAT configuration
* [x] Deploy BAT-DC01 as a local Hyper-V VM
* [x] Configure static IP addressing for BAT-DC01
* [x] Configure Windows Server
* [x] Install Active Directory Domain Services
* [x] Configure DNS
* [x] Create BATCAVE.LOCAL domain
* [x] Configure local workstation lab network
* [x] Validate workstation connectivity and internet access
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

`BATCAVE.LOCAL`

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
| Bruce Wayne | Employee | Standard User |
| Bruce Wayne Admin (`bwayne.admin`) | Administrative Account | IT / Server Administration |
| Dick Grayson | Employee | Standard User |
| Alfred Pennyworth | Executive Support | Standard User |
| Barbara Gordon | Technical User | IT Administration |
| James Gordon | Restricted User | Limited / Restricted Access |

---

## Phase 5 — File Shares & Permissions - COMPLETE

* [x] Create WayneCorp shared folder
* [x] Create IT share
* [x] Create Security share
* [x] Create Executive share
* [x] Configure share permissions
* [x] Configure NTFS permissions
* [x] Remove unintended `Users — Special` permissions from restricted shares
* [x] Test Dick Grayson access
* [x] Test Barbara Gordon access
* [x] Test Alfred Pennyworth access
* [x] Validate James Gordon restricted access
* [x] Confirm SMB access using `net use`
* [x] Verify read/write/delete permissions

### Validation Results

| User | Share | Result |
| --- | --- | --- |
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

## Phase 7 — Microsoft Intune - COMPLETE

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
* [x] Configure BitLocker and Microsoft Entra ID recovery-key backup
* [x] Test compliance policy application
* [x] Validate workstation compliance in Microsoft Intune
* [x] Troubleshoot Hybrid Join, MDM enrollment, and compliance failures
* [x] Create device groups
* [x] Create configuration profiles
* [x] Configure Windows security baseline
* [x] Configure Windows Update policy
* [x] Configure Microsoft Defender policies
* [x] Deploy applications

---

## Phase 8 — Security - COMPLETE

* [x] Configure MFA
* [x] Configure least-privilege access
* [x] Configure Windows Firewall
* [x] Configure Microsoft Defender
* [x] Configure BitLocker where supported
* [x] Validate Secure Boot/TPM considerations
* [x] Configure Conditional Access
* [x] Define security configuration and implementation decisions

---

## Phase 9 — Troubleshooting - COMPLETE

* [x] Simulate and troubleshoot DNS resolution failure
* [x] Create and troubleshoot domain authentication failure
* [x] Validate file-share permission failure
* [x] Analyze Intune enrollment troubleshooting path
* [x] Analyze application deployment troubleshooting path
* [x] Validate Windows Update troubleshooting workflow
* [x] Document troubleshooting methodology

---

## Phase 10 — Portfolio Documentation - COMPLETE

* [x] Final architecture diagram
* [x] Final network diagram
* [x] Identity flow diagram
* [x] Add screenshots
* [x] Document major configurations
* [x] Document troubleshooting scenarios
* [x] Document lessons learned
* [x] Add PowerShell scripts
* [x] Update README
* [x] Review repository for sensitive information
* [x] Final project review

---

## Project Completion

The Wayne Enterprises IT Lab has been fully implemented, validated, documented, and reviewed.

The completed project demonstrates hands-on implementation of Active Directory, DNS, Group Policy, file services, hybrid Microsoft Entra identity, Microsoft Intune endpoint management, Microsoft 365, endpoint security, application deployment, PowerShell administration, and structured enterprise troubleshooting.
