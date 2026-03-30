# The Open Source Audit
## A Capstone Project for OSS NGMC Course

**Student Name:** 
**Registration Number:** 
**Chosen Software:** Git (Version Control System)  
**License Audited:** GNU General Public License v2 (GPL v2)  
**Date of Submission:** 
**Course:** 
---

## Table of Contents

1. **Introduction** 2. **Part A — Origin and Philosophy** - A1. The Problem Git Was Created to Solve
   - A2. The License — What It Actually Says
   - A3. The Ethics of Open Source
3. **Part B — Linux Footprint** 4. **Part C — The FOSS Ecosystem** 5. **Part D — Open Source vs Proprietary** - Comparison Table
   - Deployment Verdict
6. **Part E — Shell Script Documentation** - Script 1: System Identity Report (script1_systm_idntty.sh)
   - Script 2: FOSS Package Inspector (script2_pkage_inspector.sh)
   - Script 3: Disk and Permission Auditor (script3_dsk_auditor.sh)
   - Script 4: Log File Analyzer (script4_log_anlyzr.sh)
   - Script 5: Open Source Manifesto Generator (script5_manifesto_gnratr.sh)
7. **Conclusion** 8. **References** ---

## 1. Introduction

Let’s pull back the curtain and really look at the history of Git, mostly so we can bridge the gap between what people think happened and what actually went down in the software world. A lot of people like to call open source this amazing, pioneering community project where everyone just shares code freely. But the reality was way different. What actually existed before Git was a system where proprietary companies were basically acting as the administrator for almost every single project. These massive software companies did not just show up to help out the regular developers. They established a strict rule from the very start. People wanted to ensure that someone is accountable for the code, and proprietary companies took on this role completely. This basically meant that if a volunteer fixed a problem or wrote some new code, they had to share the legal ownership with the company. The company was the administrator, and the community acted as the unpaid staff. For many of these developers, it felt exactly like volunteering to do the exhausting work of a maintenance worker for a corporate overlord, rather than actually working together effectively in a real community.

The main structural feature that made a tool like Git inevitable was this massive gap in governance. The open source community did all the hard work writing the Linux operating system, but corporate entities completely controlled the platform they used to track their code. Contributors poured obscene hours into fixing things. They were expecting to shape a platform that responded quickly to user needs. But if a community member wanted to release a new feature within a given time frame, they simply were not able to yet. The system did not automatically send it to the public since they had to wait for the administration's internal managers to decide what was good enough. This way, developers had to follow up constantly with the administration just to get their own hard work approved. It was absolutely not a structured system where everyone worked together effectively. As all these patches stacked up and releases dragged on for months, the staff just lost their motivation because the administration held all the keys and delayed everything.

Ultimately, this whole story tells us the real difference between legal openness and practical openness. Legally, the code for Linux was open. But practically, the system was closed because the tools they used to build it were locked down by corporations. Oracle and other companies controlled the deadlines and everyone was held responsible for their actions, but even still the system failed to help the developers, administration, and staff work together effectively. Real openness requires absolute trust, but relying on closed tools was just a hollow gesture because the corporate administration controlled the platform completely. My entire goal with this project report is to look at how Git was a massive act of rebellion to finally fix the gap in governance.

## 2. Part A — Origin and Philosophy

### A1. The Problem Git Was Created to Solve

To really understand why Git is so important today, we have to look at the massive problem it was forced to solve back in 2005. When you really look at it, the volunteers honestly tried to make the bad situation work for a while. They tried to use the old platforms for reporting problems like CVS and SVN just so they could get their code pushed through and keep the software alive. If a maintenance worker sees a broken pipe, they just want to fix it right then and there. But under the really strict rules of those old centralized systems, the staff had to basically beg the central server administration to let them work. The administration just kept all the data to themselves on one main server and didn't share the full project history with the community. It was literally like pulling teeth just to get a simple bug fix approved within a normal time frame because everyone was stuck waiting in the same line. The system completely failed to help the administration and staff work together effectively because the people running the central servers just flat out did not care about the community's time or effort.

This whole toxic situation created a massive amount of burnout across the board for the Linux team. You can only act as the unpaid staff fighting a slow server for so long before you just completely give up on the process. So, Linus Torvalds made a controversial decision to use a proprietary tool called BitKeeper. BitKeeper was owned by a company called BitMover, and they acted exactly like a corporate warden. At first, they made some really big promises with another key goal being to let the open-source students use it for free. But BitMover did not keep the community informed at all about what they were really planning.

Communication inside the system completely collapsed. When an open-source developer tried to reverse-engineer how BitKeeper actually worked so they could build better tools, the corporate executives got incredibly angry. They spoke in vague slogans but rarely listened to the staff doing the coding. BitMover basically treated the community code like a legal asset to guard. They completely revoked the free license to punish the developers. By tracking all these actions, the community saw a recurring problem: BitMover viewed the version control project strictly as a commercial asset, not a community platform. The trust was officially broken. People who poured years into the Linux system realized the administration only cared about squeezing out value.

Eventually, the staff had enough of it. Frustration reached a total breaking point, and out of that boiling frustration came Git. It was a massive act of rebellion to fix the gap in governance. Linus Torvalds wrote Git completely from scratch in just a few weeks. Git became a new platform where contributors took back control and finally felt empowered to make decisions for themselves. Because it is decentralized, everyone gets their own copy of the code. They wanted a structured system where everyone worked together effectively, proving that open source survives only when communities make the decisions. The legacy of the BitKeeper disaster is basically a huge cautionary tale about how true stewardship is essential. It reminds us all that "open" is only meaningful if the people building the system actually have a voice. Git stands as proof that the best systems happen when the community makes the decisions, not when an administrator tries to own the entire platform.

### A2. The License — What It Actually Says

So this section is really the analytical core of the report. Our goal here is to determine whether a corporation has the right to control an open source project. Does throwing money at a project mean you get to own the code? My position is that corporate investment does not entitle corporate control. We want to transform the system into a structured one where the community retains its legal rights forever. To do this, Git uses the GNU General Public License v2 (GPL v2). You cannot just have a giant company buy the community and treat them like unpaid employees. It just does not make any sense when you look at how the work actually gets done. The developers write the code. They do the work. The corporation just sits there.

The GPL v2 license actually grants the four main freedoms of free software. Freedom 0 means you can run the program for whatever reason you want. Freedom 1 means you can study the source code and change it. Freedom 2 lets you redistribute copies to anyone. And Freedom 3 lets you distribute your modified versions. Git absolutely grants all four of these freedoms.

But can a company take this software, modify it, and sell it without sharing their changes? No, they absolutely cannot. There is an argument that corporate investment earns corporate control. You hear this from the business side a lot. Companies think because they bought the building and keep the lights on, they get to act like the warden. They want to tell everyone inside what to do at all times. They feel like they took on all the financial risk upfront, so they should be the administration that holds all the legal power over the software and the people making it. Which sort of makes sense if you only care about money and not the community. But this argument completely falls apart when you look at the reality of the situation. The GPL v2 stops this with a rule called Copyleft. If a company distributes a modified version of Git, the license forces them to share their exact code changes. They cannot hide it.

This shows the real difference between GPL and MIT licensing. MIT is a permissive license. Under MIT, a massive corporation could just take the volunteer code, close it up, and sell it. They could basically steal the code. If a maintenance worker fixes an electrical issue or a massive plumbing problem in a building, they get paid for their labor. They get a paycheck because they provided a valuable service to the administration. That is just how the world works normally. In an unprotected open source system using MIT, things are totally backwards. The volunteers fix the issues, but the administration takes the legal ownership without paying them a single dime. Imagine fixing a broken system in a hostel on your weekend off just to be nice. And then the warden tells you they legally own your tools now and you have to ask permission to use them. It is completely unfair and it ruins the trust. The GPL v2 protects the volunteers so this never happens. I would definitely choose GPL v2 for anything I built.

There is also a very meaningful distinction between 'free as in free beer' and 'free as in freedom.' BitKeeper was free as in free beer. The Linux staff didn't have to pay money for it, but they had zero freedom to actually see how it worked or change it. And eventually, the administration just took it away. Git is free as in freedom. The developers wanted to set a deadline for every issue reported. They wanted a platform that works fairly for everyone involved. Git gives them the actual freedom to own their tools and be responsible for their actions.

### A3. The Ethics of Open Source

So in this section we have to really think about the decisions to build these open tools from scratch. Our main goal here is to fix the gap between the way decisions are made by the management and the way things actually work for the regular staff doing the coding.

Should all software be open source? To construct the argument against making everything open source, one could easily argue that the community should just stay and work within corporate decision-making processes. People say forcing everything to be open source throws away the profit incentive. The community has to spend a massive amount of time setting up new servers, rewriting all the documents, and reorganizing their administration instead of just writing new code. It could be argued that staying with a proprietary company and letting them charge money is much more efficient in the short term because the developers actually get paid. It would save time. However I do not find this argument persuasive at all when it comes to infrastructure software. You cannot report problems easily if the people in charge actively refuse to listen to you. Efficiency is totally useless if the system is fundamentally broken at its core. Staying closed would mean accepting a system where no one in the company is responsible for their actions toward the community. It would be exactly like a system where a maintenance worker does all the hard labor, but the administration completely ignores the safety complaints. Since you cannot have a working platform if the people in charge do not care about the people doing the work, foundational tools like Git must always be open source.

Is it ethical for a company to build a profitable product entirely on top of free community labor? Consider the hypothetical scenario of Company ABC, or real companies like Red Hat and Meta. Let's say this large cloud company contributes the majority of code to an open source project. They completely control its decision-making process from the top down. And they use the project's success to attract paying customers to its cloud services so they can make a massive profit off the community. This situation is really not meaningfully different from what corporate wardens do. It is the exact same broken structure.

Because at the end of the day, a platform is only as good as the trust between the staff and the administration. If a giant corporation like Company ABC acts like a warden and hides all the important data and keeps all the profits, the system is going to feel totally unfair. You just cannot have a structured system where everyone works together effectively if the people doing the hard work are kept in the dark and aren't getting paid. The developers are the ones actually fixing the massive problems and putting in the hours on their weekends. So if the administration just makes major decisions in secret to maximize their own profit, it feels completely unethical. The real lesson here is that corporate money can buy the servers and the legal papers, but it is just a fancy way of saying corporate exploitation.

Finally, what does 'standing on the shoulders of giants' mean in software? It means that if I were advising a group of developers starting a brand new open source project today, I would tell them they don't have to start from scratch. Every developer today relies on Git, which relies on Linux, which relies on GNU. It absolutely enables original innovation. You have to fix the gap before it even starts, and because we have these giant foundational tools, developers don't have to waste time. They can just focus on building new things. The community built the code from scratch so the community keeps the code forever. Open source software helps to make sure everyone is actually responsible, and it proves that sharing knowledge is the only way to move forward.

## 3. Part B — Linux Footprint

So to actually figure out how this whole thing works out in the real world, I had to physically set up an Ubuntu 22.04 virtual machine. I did this specifically so I could see Git's actual footprint on a real operating system. I wanted to see exactly where the administration puts the files and how the maintenance workers actually use them to fix broken pipes on a daily basis. You honestly cannot just read about this stuff on a website. You have to actually deploy the software yourself just to understand the massive gap in governance and see exactly how the system treats the unpaid staff. 

### Installation Method

When you really look at it, for the installation method, you almost never have to compile Git from source code yourself. The unpaid staff in the open source community already did that exhausting hard work for you. It is just sitting right there in almost every major Linux package repository waiting to be used. On my Ubuntu machine, which is obviously Debian-based, I just used the Advanced Package Tool. I literally just typed `sudo apt update && sudo apt install git` right into my terminal. If I was acting as the administration for a Red Hat or CentOS server instead, I would just use `sudo yum install git` to get the exact same result. 

What this actually does behind the scenes is reach out to the distribution's trusted servers over the internet. It grabs the pre-compiled binary and all the other free tools it needs to run properly. It puts them exactly where the Linux Filesystem Hierarchy says they should go. It is a very structured system where everyone works together effectively. You don't have to follow up constantly with a corporate warden just to get your basic tools installed. You don't have to pay a massive licensing fee or wait for an administrator to unlock the door for you. The community basically built the package managers so the regular staff can just grab their tools and get straight to work fixing the massive problems. If you actually wanted to build it from source code, you could definitely do that by downloading the tarball from the internet. But you really only do that if you are a senior maintenance worker who needs a super specific, bleeding-edge feature that the regular administration hasn't approved for the main servers yet.

### Key Directories

Once it is actually installed on the machine, Git doesn't just sit in one single folder like a giant proprietary program usually does. It scatters its tools across the filesystem so the administration and the staff can both use them easily without getting in each other's way. The main executable command lives at `/usr/bin/git`. Because `/usr/bin` is in the system's main path, I can just type `git` anywhere in the terminal and the system knows exactly what to do. The helper scripts that do the actual heavy lifting behind the scenes are stored in `/usr/lib/git-core/`. And the manuals, which are basically the written rulebooks for the staff, are stored in `/usr/share/man/man1/`. 

But the configuration files are where it gets really interesting for this audit. Git actually has three completely different levels of rules. The system-wide rules live at `/etc/gitconfig`. This is basically where the server administration sets the baseline rules for the whole entire machine so everyone is on the exact same page. Then, the user-specific rules live in the user's home directory at `~/.gitconfig`. This is where the individual maintenance worker puts their own name and email so they can get proper credit for their hard work. Finally, the project-specific rules live inside the hidden `.git/config` folder of whatever specific project you are working on. This way, developers don't have to follow up constantly with the administration just to change a simple setting for one single project. It proves that the system actually trusts the staff to manage their own local workspace.

### User and Group Permissions

One thing that honestly really shocked me during this audit is the user and group permissions. A lot of massive software tools run as a background service or a massive daemon. They have their own dedicated user account acting like a corporate warden over the files. For example, a web server usually runs as a special user called `www-data` so it can control everything in its folder. But Git does not do this at all. Instead, Git just runs as whichever user types the command. 

If I am logged in as a regular student named `arsh` and I type `git commit`, that exact process runs with my exact permissions. Why does this matter for security? Because it means Git cannot accidentally or maliciously read, modify, or delete any files on the system that my user account doesn't already have access to. It respects the standard Linux security rules completely. It does not require root privileges or a corporate overlord to operate. It just acts like a regular maintenance worker fixing a pipe. If I do not have the administration's permission to open a certain folder, Git cannot open that folder either. This prevents a massive gap in governance because the software doesn't try to take over the whole machine. It just does the specific job the staff asked it to do.

### Service Management

Because Git is just a command-line utility and not a persistent background server, you do not manage it with the standard system administration tools. You cannot run a command like `sudo systemctl start git` or `sudo service git restart`. It just executes, does its job fixing the broken pipe, and closes immediately. It doesn't sit around eating up memory all day long like a corporate warden watching over the system. 

There is a very small exception to this rule called `git daemon`. If the administration really wanted to, they could start a background service to host open source code for anonymous users on the internet. But honestly, nobody really uses that anymore. Today, everyone just uses SSH keys to connect to their servers. So Git just relies on the OpenSSH service to handle all the background network security. This is another example of a structured system where everyone works together effectively. Git doesn't try to be a network security warden. It just lets the SSH tools do their job, and Git focuses entirely on tracking the code.

### Update Model

And for the update model, it relies entirely on the community working together. In a closed system, you have to wait for the corporate executives to decide when an update is profitable enough to release. But in this open source system, if someone finds a massive security flaw, the community discusses it immediately on a public platform for reporting problems. An unpaid staff volunteer writes a patch to fix the code. The community approves it on the mailing list. And then the Linux distribution administrators push it straight to the `apt` repositories. 

It became super obvious that the community and the corporate wardens wanted completely different things out of software updates. They desperately needed a system that actually sends them updates and treats them with basic respect. When I run my regular system updates using `sudo apt upgrade`, my computer just downloads the patched version automatically. The system completely helps the administration and staff work together effectively to keep things secure without a massive corporation demanding money for updates. You don't have to beg the administration for a security patch. Because the code is completely open, the community just fixes the broken pipe themselves and shares the repaired tools with the rest of the world.

```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Krishiv Narang | Course: Open Source Software
# Software: Git

# --- Variables ---
STUDENT_NAME="Krishiv Narang" 
SOFTWARE_CHOICE="Git" 

# --- System info ---
# Using command substitution to get system data
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Try to get the distro name gracefully
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d '=' -f2 | tr -d '"')
else
    DISTRO=$(uname -s)
fi

# --- Display ---
echo "====================================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "====================================================="
echo "Software Audited : $SOFTWARE_CHOICE"
echo "Distribution     : $DISTRO"
echo "Kernel           : $KERNEL"
echo "Logged in User   : $USER_NAME"
echo "Home Directory   : $HOME"
echo "System Uptime    : $UPTIME"
echo "Current Date     : $DATE_TIME"
echo "-----------------------------------------------------"
echo "LICENSE NOTICE: This system runs the Linux kernel,"
echo "which is licensed under the GNU GPL v2."


echo "====================================================="
```
