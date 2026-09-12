# Active Directory Design

## Domain

**Domain:** `WAYNEENTERPRISES.LOCAL`

## Organizational Unit Structure

```text
WAYNEENTERPRISES.LOCAL
│
├── Users
│   ├── Executives
│   ├── Employees
│   ├── IT
│   ├── Security
│   └── External
│
├── Computers
│   ├── Workstations
│   └── Servers
│
├── Groups
│
└── Service Accounts

## Security Groups

| Group | Purpose |
|---|---|
| `GG-Wayne-Executives` | Executive users |
| `GG-Wayne-IT` | IT and support users |
| `GG-Wayne-Security` | Security users |
| `GG-Wayne-Employees` | General employees |
| `GG-Wayne-External` | External and remote users |

## User-to-Group Membership

| User | Security Group |
|---|---|
| Bruce Wayne | `GG-Wayne-Executives` |
| Dick Grayson | `GG-Wayne-Employees` |
| Alfred Pennyworth | `GG-Wayne-Employees` |
| Barbara Gordon | `GG-Wayne-Security` |
| James Gordon | `GG-Wayne-External` |

## Resource Access Model

| Group | WayneCorp | IT | Security | Executive |
|---|---:|---:|---:|---:|
| `GG-Wayne-Executives` | Read/Write | No Access | No Access | Read/Write |
| `GG-Wayne-IT` | Read/Write | Read/Write | No Access | No Access |
| `GG-Wayne-Security` | Read/Write | No Access | Read/Write | No Access |
| `GG-Wayne-Employees` | Read/Write | No Access | No Access | No Access |
| `GG-Wayne-External` | Limited | No Access | No Access | No Access |
