# Wayne Enterprises IT Lab — Project Tracker

## Project Status

**Overall Status:** 🟡 In Progress

**Current Phase:** Phase 1 — Microsoft Entra ID

---

## Phase 0 — Project Foundation

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

## Phase 1 — Microsoft Entra ID

* [ ] Create Bruce Wayne account
* [ ] Create Dick Grayson account
* [ ] Create Alfred Pennyworth account
* [ ] Create Barbara Gordon account
* [ ] Create James Gordon account
* [ ] Create security groups
* [ ] Configure Bruce's administrative access
* [ ] Configure standard-user access
* [ ] Configure James Gordon's limited access
* [ ] Assign Microsoft 365 licenses
* [ ] Verify user sign-in

---

## Phase 2 — Exchange Online

* [ ] Verify Exchange Online availability
* [ ] Verify Bruce Wayne mailbox
* [ ] Verify Dick Grayson mailbox
* [ ] Verify Alfred Pennyworth mailbox
* [ ] Verify Barbara Gordon mailbox
* [ ] Configure/test James Gordon mailbox if required
* [ ] Test Outlook/Microsoft 365 authentication

---

## Phase 3 — Core Infrastructure

* [ ] Create/verify Wayne Enterprises resource group
* [ ] Create/verify Batcave VNet
* [ ] Create/verify server subnet
* [ ] Configure Hyper-V host environment
* [ ] Deploy BAT-DC01 as a local Hyper-V VM
* [ ] Configure Windows Server
* [ ] Install Active Directory Domain Services
* [ ] Configure DNS
* [ ] Create WAYNEENTERPRISES.LOCAL domain
* [ ] Establish Lab Connectivity between local workstation lab and Azure
* [ ] Validate hybrid network connectivity

---

## Phase 4 — Active Directory

* [ ] Create OU structure
* [ ] Create AD users
* [ ] Create security groups
* [ ] Configure group memberships
* [ ] Configure Group Policy
* [ ] Configure administrative permissions
* [ ] Configure least-privilege access
* [ ] Validate authentication

---

## Phase 5 — File Services

* [ ] Create WayneCorp shared folder
* [ ] Create IT share
* [ ] Create Security share
* [ ] Create Executive share
* [ ] Configure share permissions
* [ ] Configure NTFS permissions
* [ ] Test access with each user
* [ ] Validate James Gordon's restricted access

---

## Phase 6 — Windows Workstations

### Workstation Deployment Environment

* [ ] Install/configure Hyper-V
* [ ] Create Windows 11 workstation VMs
* [ ] Perform clean Windows 11 installations
* [ ] Configure workstation networking
* [ ] Establish connectivity to Azure/Active Directory
* [ ] Join workstations to WAYNEENTERPRISES.LOCAL
* [ ] Configure baseline workstation settings
* [ ] Document workstation deployment process

### Bruce Wayne

* [ ] Deploy BAT-WIN11-BRUCE
* [ ] Configure Windows
* [ ] Join/enroll device
* [ ] Configure Bruce's administrative access
* [ ] Validate connectivity

### Dick Grayson

* [ ] Deploy BAT-WIN11-DICK
* [ ] Configure Windows
* [ ] Join/enroll device
* [ ] Validate standard-user permissions

### Alfred Pennyworth

* [ ] Deploy BAT-WIN11-ALFRED
* [ ] Configure Windows
* [ ] Join/enroll device
* [ ] Validate standard-user permissions

### Barbara Gordon

* [ ] Deploy BAT-WIN11-BARBARA
* [ ] Configure Windows
* [ ] Join/enroll device
* [ ] Validate standard-user permissions

---

## Phase 7 — Microsoft Intune

* [ ] Configure Intune
* [ ] Configure Windows enrollment
* [ ] Enroll first test device
* [ ] Create device groups
* [ ] Create configuration profiles
* [ ] Configure Windows security baseline
* [ ] Configure Windows Update policy
* [ ] Configure Microsoft Defender policies
* [ ] Deploy applications
* [ ] Configure compliance policies
* [ ] Test policy application
* [ ] Troubleshoot policy/application failures

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

## Phase 9 — VPN / Remote Access

* [ ] Design James Gordon remote-access scenario
* [ ] Select VPN solution
* [ ] Configure VPN
* [ ] Test external connectivity
* [ ] Test internal DNS
* [ ] Test file-share access
* [ ] Validate restricted permissions
* [ ] Document troubleshooting process

---

## Phase 10 — Troubleshooting

* [ ] Create DNS failure scenario
* [ ] Create domain authentication failure
* [ ] Create file-share permission failure
* [ ] Create Intune enrollment failure
* [ ] Create application deployment failure
* [ ] Create Windows Update issue
* [ ] Create VPN connectivity failure
* [ ] Document troubleshooting methodology

---

## Phase 11 — Portfolio Documentation

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
