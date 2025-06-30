# Security Update Parser

This document outlines my update parser. Originally prototyped with Python, then rewritten in TypeScript using Node.js runtime. The app scrapes live release note pages, then uses AI to parse the results and highlight any security related updates since the currently installed version. The results are then posted to a webpage in an easy to read table.

The system is designed to provide a clear and concise overview of software updates, with a particular focus on security enhancements. Below is a quick bullet list of features, followed by an example screenshot.

---

- **Automated Release Note Gathering:** Automatically fetches the latest release notes directly from product webpages.
    - Also reads a list of currently installed versions.

- **AI-Powered Analysis:** Uses artificial intelligence to read and understand the content of the release notes.

- **Security Update Highlighting:** Specifically detects and reports on any security-related fixes or vulnerability patches included in new releases.

- **Key Information Extraction:** Identifies and extracts crucial details like:
    - The latest version available.
    - The date the latest version was released.
    - A brief summary of what's new in the latest version.

- **Version Comparison:** Compares the latest version found against your currently installed version to pinpoint any necessary upgrades, especially those with security benefits.

- **Clear Reporting:** Presents all the gathered and analyzed information in an easy-to-understand format, making it simple to track product updates and maintain secure systems.
---
<img width="1087" src="https://github.com/user-attachments/assets/4bd0100b-3858-4166-adf0-47cbfbfe336a" />
