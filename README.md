# Bash System Administration Dashboard

A comprehensive, menu-driven Bash script that serves as an all-in-one **system administration tool**. Designed to simplify common sysadmin tasks from a single interface.

---

## Features

###  System Information
- OS & Kernel version
- CPU and memory usage
- Disk usage breakdown

###  User Management
- List existing users
- Add new users
- Delete users
- Modify user details (passwords, group membership)

###  Process Management
- View top CPU-consuming processes
- Kill processes by name or PID

### Service Management
- List active/inactive services
- Start, stop, or restart a service

###  Network Information
- Show IP configuration
- List active network connections

###  Log Analysis
- View recent logs
- Search logs using keywords or regex

###  Backup & Restore
- Backup selected directories
- Restore from existing backups

###  System Updates
- Check for available updates
- Install updates with user confirmation

---

##  Optional Features (Included)

###  Cron Job Scheduler
- Add or remove cron jobs
- List scheduled tasks

###  Intrusion Detection (via **chkrootkit**)
- Run chkrootkit scans
- Display scan results
- Log suspicious activity

---

##  Usage

```bash
# Step 1: Make the script executable
chmod +x admin_dashboard.sh

# Step 2: Run with sudo to allow administrative tasks
sudo ./admin_dashboard.sh
```

---

##  Project Structure

```
admin_dashboard/
├── admin_dashboard.sh       # Main menu script
├── functions/               # Functional modules
│   ├── user_mgmt.sh
│   ├── sys_info.sh
│   ├── network.sh
│   ├── services.sh
│   ├── processes.sh
│   ├── logs.sh
│   ├── backup.sh
│   ├── updates.sh
│   ├── cron.sh
│   └── intrusion.sh
├── logs/
│   └── actions.log          # Log of script activity
└── README.md                # Project documentation
```

---

##  Dependencies

Ensure the following are installed on your system:

- `bash` (version 4+)
- `chkrootkit` (for intrusion detection)
- `cron`
- Core Linux utilities: `top`, `df`, `free`, `ps`, `systemctl`, `ip`, `grep`, `awk`, `sed`, etc.

Install `chkrootkit` if missing:
```bash
sudo apt install chkrootkit     # Debian/Ubuntu
sudo yum install chkrootkit     # CentOS/RHEL
```

---

##  Logging

All actions performed through the dashboard are logged to:
```
admin_dashboard/logs/actions.log
```

---

## Permissions

This script performs privileged operations. **Always run with `sudo`.**

---

##  Contributions

Feel free to fork this project or suggest improvements. Custom modules are welcome.
