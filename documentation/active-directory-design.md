# Active Directory Design

This document summarizes the final Active Directory structure and access model implemented in the Wayne Enterprises IT Lab.

## Domain

**Domain:** `BATCAVE.LOCAL`

**Domain Controller:** `BAT-DC01`

## Organizational Unit Structure

```text
BATCAVE.LOCAL
│
└── Wayne Enterprises
    ├── Admin Accounts
    ├── Groups
    ├── Servers
    ├── Users
    └── Workstations
```

The OU structure separates administrative accounts, security groups, servers, standard users, and workstation computer objects to provide a logical structure for administration and Group Policy.

## User Access Model

| User | Role | Access |
|---|---|---|
| Bruce Wayne | Employee | Standard User |
| Bruce Wayne Admin (`bwayne.admin`) | Administrative Account | IT / Server Administration |
| Dick Grayson | Employee | Standard User |
| Alfred Pennyworth | Executive Support | Standard User |
| Barbara Gordon | Technical User | IT Administration |
| James Gordon | Restricted User | Limited / Restricted Access |

## Administrative Account Design

Bruce Wayne uses separate accounts for standard and administrative activities.

| Account | Purpose | Privilege |
|---|---|---|
| Bruce Wayne standard account | Daily workstation use | Standard User |
| `bwayne.admin` | Administrative tasks | Privileged Administrator |

Administrative tasks are performed using the dedicated privileged account rather than Bruce Wayne's everyday user account.

This implements least privilege and reduces unnecessary use of administrative credentials.

## Security Groups and Access Control

Security groups are used to assign access to resources rather than granting permissions directly to individual users wherever practical.

The lab uses group-based permissions to control access to departmental file shares and administrative resources.

Configured file shares include:

* WayneCorp
* IT
* Security
* Executive

Share and NTFS permissions were tested using multiple user accounts to verify both authorized access and intentional access-denied behavior.

## Workstation Organization

The following Windows 11 workstation computer objects are joined to `BATCAVE.LOCAL` and organized within the Active Directory environment:

* `BAT-WIN11-BRUCE`
* `BAT-WIN11-DICK`
* `BAT-WIN11-AL`
* `BAT-WIN11-BARB`

The workstations are also configured for Hybrid Microsoft Entra Join and Microsoft Intune management.

## Design Principles

The final Active Directory design demonstrates:

* Least-privilege administration
* Separation of standard and privileged accounts
* Organizational Unit-based resource organization
* Group-based access control
* Centralized domain authentication
* Group Policy management
* Integration between on-premises Active Directory and Microsoft Entra ID
