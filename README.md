# The-Open-Source-Audit-24BCE10374

**Student:** Krishiv Narang 
**Registration Number:** 24BCE10374
**Course:**  Open Source Software — CSE0002 
**Chosen Software:** Git (Version Control System)
**License:** GNU General Public License v2 (GPL v2)
**Repository:** https://github.com/krishivnarang/The-Open-Source-Audit-24BCE10374/edit/main/README.md
---

## About This Project

So this repository basically holds my entire final capstone project. And I decided to focus the whole thing on Git. Because when you really look at it, Git is just the most used version control system out there right now, so it made absolute sense to use it for this course audit. The main report I wrote basically digs into how Git was actually created in the first place. It also breaks down how the GPL v2 licensing actually works for it, and what its footprint looks like on a normal Linux system. But besides just the written report, I also had to write five original shell scripts from scratch. I put these scripts in here just to prove I know how to actually use Linux command-line tools and do the shell scripting stuff that was required by the grading rubric.
Chosen Software — Git

So for the actual software audit part, I obviously picked Git. Linus Torvalds is the one who originally built this version control system way back in 2005. And the really interesting part is it was basically born out of a massive licensing crisis inside the Linux kernel community. Before Git, the developers were using this proprietary tool called BitKeeper. But then BitKeeper just suddenly revoked their free license without much warning. So the community was basically forced to just build their own alternative completely from scratch. That one specific crisis is what actually forced Git into existence. And since then, it just grew to become the absolute standard for how developers actually do open-source software and work together.

🛠️ Setup & Configuration

So if you actually want to run this code on your own terminal to run it and check how it actually works , you have to follow these exact steps first. Just to make sure the environment is set up right and the scripts do not break.
1. Environment Setup

I basically built this entire project specifically to run on Linux environments. So I am talking about distributions like Ubuntu, Debian, CentOS, RHEL, or Fedora ,  but if you try to run these scripts on a macOS machine they will probably still execute just fine still you should know that some of the really deep system-level commands I wrote (like trying to read /etc/os-release) might just spit out basic fallback data. You will not get the actual real system details because Mac just handles that stuff differently.
2. Dependency Installation

And for the dependencies, you just have to make absolutely sure that bash, git, and the normal coreutils packages are actually installed on your machine. You really need to have those ready to go before you even start testing out the scripts.

**Ubuntu / Debian:**
```bash
sudo apt update && sudo apt install git -y
```

**RHEL / CentOS / Fedora:**
```bash
sudo yum install git -y   # CentOS/RHEL
sudo dnf install git -y   # Fedora
```

### 3. Git Configuration (Optional but Recommended)
To ensure all the auditing scripts function exactly as intended, it is highly recommended to configure your local Git identity before execution:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 4. Clone & Execution
Use the following commands to download and prepare the repository on your machine:
```bash
# Clone the repository
git clone [https://github.com/falco1-plk/OSSAudit24BSA10135.git](https://github.com/falco1-plk/OSSAudit24BSA10135.git)
cd oss-audit-24BSA10135

# Make all scripts executable (REQUIRED)
chmod +x scripts/*.sh

# Run the project scripts (details below)
./scripts/script1_system_identity.sh
```

---

## Repository Structure

The files and directories for this project are organized as follows:

```text
oss-audit-24BSA10135/
├── README.md                      ← Project documentation (this file)
├── PROJECT_REPORT.md              ← Final project report (full audit)
└── scripts/
    ├── script1_system_identity.sh         ← System Identity Report
    ├── script2_package_inspector.sh       ← FOSS Package Inspector
    ├── script3_disk_auditor.sh            ← Disk and Permission Auditor
    ├── script4_log_analyzer.sh            ← Log File Analyzer
    └── script5_manifesto_generator.sh     ← Open Source Manifesto Generator
```

| Path | Description |
|------|-------------|
| `README.md` | Root-level project documentation with setup, run instructions, and script descriptions. |
| `PROJECT_REPORT.md` | The final full audit report (including the 10,000+ words of analysis). |
| `scripts/` | Contains all five shell scripts required by the assignment. |

---

## Script Descriptions and How to Run Each

Below is a detailed breakdown of the five shell scripts required for the project, including what they do and how to actually execute them.

### Script 1 — System Identity Report (`script1_system_identity.sh`)

This script generates a formatted welcome screen. It retrieves your Linux distribution name, current kernel version, logged-in user, home directory, and system uptime. It also displays the current date and time alongside a brief note regarding the GPL v2 license of the Linux kernel. To build this, I utilized variables, `echo` commands, and command substitution `$()`.

**Run:**
```bash
./scripts/script1_system_identity.sh
```
**Expected output:** A bordered banner showing all system identity fields along with a brief note about GPL v2 licensing of the Linux kernel.

---

### Script 2 — FOSS Package Inspector (`script2_package_inspector.sh`)

I wrote this script to verify whether Git is actually installed on the host machine. It extracts the exact version and license details, and then relies on a `case` statement to print a short open-source philosophy note based on the package recognized. It demonstrates the use of if-then-else logic, `case` statements, package queries (`dpkg`/`rpm`), and text filtering with `grep`.

**Run:**
```bash
./scripts/script2_package_inspector.sh
```
**Expected output:** Installation status of Git, its version, license details, and a one-line open-source philosophy note.

---

### Script 3 — Disk and Permission Auditor (`script3_disk_auditor.sh`)

This auditor script loops through crucial system directories (such as `/etc`, `/var`, `/usr`, and `/home`) to report their exact permissions, ownership, and total disk usage. It will also inspect the Git configuration directory if it detects one. I primarily used `for` loops, `du`, `ls -ld`, `awk`, and `cut` to extract and format this data properly.

**Run:**
```bash
./scripts/script3_disk_auditor.sh
```
**Expected output:** A formatted table listing directories alongside their permissions, owners, and sizes.

---

### Script 4 — Log File Analyzer (`script4_log_analyzer.sh`)

This script is designed to read any log file line by line. It counts the total number of times a specific keyword appears (the default keyword is `"error"`) and then outputs the last five lines containing that match. This demonstrates my ability to implement `while read` loops, if-then conditionals, counter variables, and command-line arguments (`$1`, `$2`).

**Run:**
```bash
./scripts/script4_log_analyzer.sh /var/log/syslog error

# or with a custom log file and keyword:
./scripts/script4_log_analyzer.sh /path/to/logfile WARNING
```
**Expected output:** The total count of keyword matches followed by the last five matching lines from the log file.

---

### Script 5 — Open Source Manifesto Generator (`script5_manifesto_generator.sh`)

This is an interactive script that prompts the user with three questions regarding their views on open-source software. After collecting the input, it generates a personalized philosophy statement and writes the output directly into a `.txt` file. This script highlights the use of the `read` command for user input, string concatenation, output redirection (`>` and `>>`), and the `date` command.

**Run:**
```bash
./scripts/script5_manifesto_generator.sh
```
**Expected output:** A saved file named `manifesto_[username].txt` containing a personalized open-source philosophy paragraph; the exact same text is also printed to the terminal so you can read it.

---

## Dependencies

The following table lists the necessary tools to run the shell scripts successfully.

| Tool | Purpose | Install (Ubuntu) |
|------|---------|-----------------|
| `bash` | Script interpreter | Pre-installed |
| `git` | Chosen audit software | `sudo apt install git` |
| `coreutils` | `du`, `df`, `ls`, `date`, `uname`, `whoami`, `uptime` | Pre-installed |
| `grep` | Text search in log analyzer | Pre-installed |
| `awk` | Field extraction in disk auditor | Pre-installed |
| `dpkg` or `rpm` | Package info in inspector | Pre-installed on respective distros |

---

## Notes for the Evaluator

A few important details for the person grading this capstone project:

* I developed and thoroughly tested all scripts on an **Ubuntu 22.04 LTS** system.
* For **Script 4** to function correctly, you must provide a valid, readable log file path as the first argument. (Try `/var/log/syslog` on Ubuntu systems or `/var/log/messages` on CentOS).
* **Script 5** requires user interaction, so it will pause and wait for keyboard input during execution.
* You do **not** need root or `sudo` privileges to execute any of these scripts.

---

## License

This project is being submitted as official coursework for the OSS NGMC course. The five shell scripts are my own original work. The accompanying project report is the intellectual property of the student.
