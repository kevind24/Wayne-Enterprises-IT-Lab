# Major Configurations

This document summarizes the major infrastructure, identity, endpoint management, security, and Microsoft 365 configurations implemented in the Wayne Enterprises IT Lab.


## Active Directory Domain Services

- Deployed Windows Server 2022 as the domain controller `BAT-DC01`.
- Created the `batcave.local` Active Directory domain.
- Organized Wayne Enterprises resources using dedicated Organizational Units (OUs) for:
  - Admin Accounts
  - Groups
  - Servers
  - Users
  - Workstations
- Created domain user accounts representing Wayne Enterprises employees and administrators.
- Created security groups to support role-based access and resource permissions.
- Joined Windows 11 workstations to the `batcave.local` domain.


## DNS

- Configured DNS services on `BAT-DC01` for the `batcave.local` domain.
- Created and validated DNS records for the domain controller and Windows 11 workstations.
- Configured domain-joined endpoints to use the domain controller for internal DNS resolution.
- Verified name resolution between systems in the lab environment.


## File Services and Permissions

- Created centralized file shares on `BAT-DC01` for Wayne Enterprises resources.
- Configured dedicated shares for:
  - WayneCorp
  - IT
  - Security
  - Executive
- Applied share and NTFS permissions using security groups and least-privilege access principles.
- Tested read, write, modify, and denied-access scenarios using different user accounts.
- Validated that restricted users could not access resources outside their assigned permissions.


## Hybrid Identity

- Configured Microsoft Entra Connect to integrate the on-premises `batcave.local` Active Directory environment with Microsoft Entra ID.
- Enabled Password Hash Synchronization for synchronized user identities.
- Synchronized selected Active Directory users and groups with Microsoft Entra ID.
- Configured Windows 11 domain-joined workstations for Hybrid Microsoft Entra Join.
- Validated hybrid identity registration and Primary Refresh Token (PRT) functionality on enrolled endpoints.


## Microsoft Intune Enrollment

- Configured automatic MDM enrollment for domain-joined Windows 11 endpoints.
- Created and linked an Active Directory Group Policy Object (GPO) to enable automatic enrollment using Microsoft Entra ID credentials.
- Enrolled hybrid Microsoft Entra joined Windows 11 devices into Microsoft Intune.
- Verified successful device registration and Intune management status.


## Intune Compliance and Configuration

- Created a Windows compliance policy to evaluate managed endpoint compliance.
- Applied configuration policies to managed Windows 11 devices.
- Configured Microsoft Defender Antivirus settings through Intune.
- Created a Windows Update ring to manage Windows update behavior.
- Verified successful policy application and compliance reporting in the Intune admin center.


## Application Deployment

- Added Microsoft Company Portal as a managed application in Microsoft Intune.
- Assigned Company Portal for required installation on managed Windows devices.
- Validated successful application deployment and installation through Intune reporting.


## Microsoft 365

- Created and managed Microsoft 365 user accounts for the Wayne Enterprises environment.
- Assigned Microsoft 365 Business Premium licenses to lab users.
- Managed user identities and licensing through the Microsoft 365 admin center.
- Integrated Microsoft 365 identities with the hybrid identity environment.


## Endpoint Security

- Managed Microsoft Defender Antivirus settings through Microsoft Intune.
- Applied endpoint security settings to managed Windows 11 devices.
- Verified successful policy check-in with no reported errors or conflicts.
- Used Intune compliance and security reporting to validate endpoint management status.
