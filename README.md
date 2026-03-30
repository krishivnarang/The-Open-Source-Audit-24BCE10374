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

