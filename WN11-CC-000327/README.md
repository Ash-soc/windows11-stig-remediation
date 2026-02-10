# WN11-CC-000327 – PowerShell Transcription

This folder documents the remediation of Windows 11 STIG control **WN11-CC-000327**, which requires PowerShell Transcription to be enabled.

This control enhances visibility into PowerShell activity by capturing full command sessions for investigative and forensic purposes.

**Test Environment:**  
Win11-VM01 (Windows 11 Virtual Machine)

---

## 🔎 Description

PowerShell Transcription records full PowerShell sessions, including:

- Command input  
- Command output  
- Errors generated during execution  

Unlike Script Block Logging (Event ID 4104), which captures executed commands, transcription provides full session context, making it valuable during incident response and forensic investigations.

Transcripts are saved as text files to a designated directory.

---

## ⚠️ Risk / Impact

Without PowerShell Transcription enabled:

- SOC teams lose context around PowerShell activity  
- Command output is not preserved  
- Attack timelines become harder to reconstruct  
- Post-exploitation activity may lack supporting forensic evidence  

Since PowerShell is frequently used in modern attacks, lack of session logging reduces investigative capability.

---

## 🔍 Detection

This control was identified as non-compliant during:

- DISA Windows 11 STIG compliance scan  
- Tenable vulnerability assessment  
- Group Policy configuration review  

The required policy was either not configured or not enforced.

---

## 🛠️ Remediation

PowerShell Transcription was enabled using Group Policy.

Path:

```

Computer Configuration
→ Administrative Templates
→ Windows Components
→ Windows PowerShell
→ Turn on PowerShell Transcription

```

The setting was configured to:

```

Enabled

```

Additional configuration:

- A secure transcript output directory was defined
- Transcripts configured to include invocation headers (recommended for forensic clarity)

---

## ✅ Validation

Validation was performed through:

1️⃣ Group Policy review to confirm the setting is enabled  

2️⃣ Registry verification under:

```

HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription

```

3️⃣ Executing a test PowerShell session and confirming transcript file creation in the configured directory  

Transcript files were successfully generated and contained full session activity.

---

## 📊 Technical Details

**Registry Path:**
```

HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription

```

**Key Values:**
- EnableTranscripting = 1 (DWORD)  
- OutputDirectory = <Defined Path>  
- EnableInvocationHeader = 1 (Optional but recommended)

---
> “PowerShell Transcription allows SOC analysts to reconstruct full PowerShell sessions, including command output. This is critical during investigations because it provides context around what an attacker executed and what the result was. Combined with Script Block Logging, it significantly improves visibility into fileless and post-exploitation activity.”

---

## 📚 References

- DISA Windows 11 STIG  
  https://public.cyber.mil/stigs/

- Microsoft PowerShell Transcription Documentation  
  https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-logging
