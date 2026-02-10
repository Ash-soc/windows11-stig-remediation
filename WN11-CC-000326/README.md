# WN11-CC-000326 – PowerShell Script Block Logging

This repository documents remediation and validation steps for Windows 11 STIG controls performed in a controlled lab environment. Validation is confirmed through policy review, registry inspection, and compliance re-scan results.

**Test Environment:**  
Win11-VM01 (Windows 11 Virtual Machine)

---

## 🔎 Description

PowerShell Script Block Logging records the full contents of PowerShell commands and scripts as they execute, including dynamically generated or obfuscated code.

PowerShell is a trusted administrative tool built into Windows and is frequently abused by attackers during:

- Post-exploitation activity  
- Lateral movement  
- Fileless malware execution  
- Credential harvesting  
- Persistence mechanisms  

When enabled, activity is logged as:

**Event ID 4104 – PowerShell Script Block Logging**

Log Location:
```

Applications and Services Logs → Microsoft → Windows → PowerShell → Operational

```

---

## 🖼️ Before Remediation

The DISA STIG compliance scan identified Script Block Logging as not configured in accordance with STIG requirements.

---

## ⚠️ Risk / Impact

Without Script Block Logging enabled:

- Malicious PowerShell execution may go undetected  
- Fileless attacks leave minimal forensic evidence  
- SOC analysts lack visibility into executed commands  
- Incident response investigations are significantly hindered  

Because PowerShell is commonly used in modern attacks, disabling logging reduces defensive visibility.

---

## 🔍 Detection

This finding was identified through:

- DISA Windows 11 STIG compliance scan  
- Tenable vulnerability assessment  
- Group Policy configuration review  

---

## 🛠️ Remediation

Script Block Logging was enabled using Group Policy.

Path:

```

Computer Configuration
→ Administrative Templates
→ Windows Components
→ Windows PowerShell
→ Turn on PowerShell Script Block Logging

```

The setting was configured to:

```

Enabled

```

---

## ✅ Validation

1️⃣ Group Policy was reviewed to confirm the setting is enabled.  

2️⃣ A test PowerShell command was executed to verify logging.  

3️⃣ Event ID **4104** was confirmed in:

```

Applications and Services Logs
→ Microsoft
→ Windows
→ PowerShell
→ Operational

```

---

## 🖼️ After Remediation

A follow-up STIG compliance scan confirmed the system is compliant with WN11-CC-000326.

---

> “PowerShell Script Block Logging allows SOC analysts to see the exact commands executed on a system, including obfuscated or dynamically generated scripts. This is critical for detecting fileless malware and post-exploitation techniques. Without it, malicious PowerShell activity may execute without sufficient forensic visibility.”

---

## 📚 References

- DISA Windows 11 STIG  
  https://public.cyber.mil/stigs/

- Microsoft PowerShell Logging Documentation  
  https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-logging

- Tenable Documentation  
  https://docs.tenable.com/
