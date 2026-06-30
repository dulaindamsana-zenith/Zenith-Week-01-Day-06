# 💀 Project Zenith: Automated Cyber Security & Systems Integrity Suite 💀

Welcome to **Project Zenith**, an advanced collection of native Linux automation scripts engineered for adversarial emulation, threat hunting, and cryptographic system integrity validation. Developed and maintained under the isolation protocols of the **Aloka Syndicate**.

---

## 📂 Architecture & Core Security Modules

The repository contains production-ready shell scripts tailored for directory-isolated environment security workflows.

### 1. 🛡️ Syndicate Integrity Checker (`syndicate_integrity_checker.sh`)
* **Category:** File Integrity Monitoring (FIM) & Anti-Tampering
* **Directory Focus:** Execution managed natively within the Day 06 workspace environment.
* **Baseline Mode (`-b`):** Generates immutable cryptographic fingerprints utilizing the SHA-256 algorithm for target text matrices (`passwords_1.txt`, `passwords_2.txt`, `passwords_3.txt`) and commits them to `baseline.hashes`.
* **Check Mode (`-c`):** Audits current system file hashes against the frozen baseline. It pipes execution runtime outputs directly to `baseline_hashes_logger.log` and evaluates integrity via a calculated validation match count (`grep -c "OK"`) to catch unauthorized modifications instantly.
* **Interface:** Styled with custom high-visibility ANSI glow layouts (`GLOW_GREEN`, `GLOW_RED`) for rapid status diagnostics inside the terminal.

### 2. 🕵️‍♂️ Backdoor Account Detector (`backdoor_detector.sh`)
* **Category:** Threat Hunting & Privilege Escalation Auditing
* **Directory Focus:** Maintained within the automated Day 05 framework scope.
* **Core Logic:** Parses local account configuration structures (`passwd` mapping files) string-by-string using a customized `:` field separator loop.
* **Detection Matrix:** Flags any rogue user account possessing administrative permissions (`UID 0`) operating under an alias other than `root`. Unauthorized accounts trigger an output flag to `backdoor_alerts.log` accompanied by terminal severity warnings.

---

## ⚙️ Operational Blueprint & Execution

To deploy and test these security utilities, clone the target repository to your local Linux terminal infrastructure, authorize execution bounds, and supply the appropriate operational flags:

```bash
# Clone the security toolkit
git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
cd YOUR_REPO_NAME

# Grant global executable privileges to all shell scripts
chmod +x *.sh

# 1. Establish the Cryptographic Integrity Baseline
./syndicate_integrity_checker.sh -b

# 2. Conduct a Cryptographic Integrity Verification Audit
./syndicate_integrity_checker.sh -c

# 3. Run the Backdoor Privileged Account Scanner
./backdoor_detector.sh
