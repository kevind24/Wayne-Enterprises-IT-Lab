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
