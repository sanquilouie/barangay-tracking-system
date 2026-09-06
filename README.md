# Barangay Information Tracking System

A sanitized public edition of a legacy PHP project for barangay document management and QR-based status tracking. This repository is historical portfolio source: it preserves the application originally developed, rather than presenting a modernized replacement.

Private data and credentials have been removed or replaced for publication. Application behavior, architecture, dependencies, security weaknesses, and known defects were otherwise intentionally preserved. **This is not production-ready. Do not deploy it with real resident information, expose its legacy endpoints to the public internet, or treat generated documents as official records.**

## What the source contains

- Official-account management and role-based page routing for Administrator, Mayor Secretary, and Secretary accounts.
- Clearance, residency, and business-permit records, document output, and status tracking.
- QR generation and scanning assets, with a tracking page that reads document identifiers.
- Dashboard and activity-log pages.
- Additional legacy resident-profiling and dashboard/template areas, including backup/restore code. Their completeness and runtime compatibility are not claimed.

The application uses procedural PHP, MySQLi and PDO, HTML/CSS/JavaScript, Bootstrap/AdminLTE, jQuery, PHP QR Code, TCPDF, and other manually bundled libraries. Dependencies and duplicate legacy areas remain as originally supplied; there is no new dependency installation or modernization workflow in this edition.

## Source layout

- `index.php`: main login and role routing.
- `pages/`: main document, official-account, dashboard, and tracking workflows.
- `tracking/statustracking.php`: QR document-status lookup.
- `Sql Database/db_barangay.sql`: original schema with sanitized demonstration data.
- `Dash-board/`, `Resident_Profiling/`, and `Private/`: additional legacy areas.
- `Picture/`, `assets/`, and bundled vendor directories: original presentation and library assets, except the specifically disclosed publication substitutions.

## Local inspection/setup notes

This sanitization pass did not run the application, import the database, or establish a tested PHP/MySQL version combination. Use only an isolated local environment and a disposable database if exploring the project.

1. Inspect the legacy connection files before setup: `pages/connection.php`, `db.php`, `Private/conn/db-connection.php`, and `Dash-board/Private/conn/db-connection.php`. Their original loopback/development settings, including empty local database passwords, are intentionally unchanged. Do not reuse them for a production installation. `pages/backup/backup.php` contains a separate legacy database configuration that may not match the main application.
2. Import `Sql Database/db_barangay.sql` into a new disposable database compatible with those settings. Do not import a historical private dump. Original DDL, indexes, table relationships, and missing-schema defects have not been repaired.
3. Provide `DEFAULT_OFFICIAL_PASSWORD` through the PHP process/web-server environment before using official-account creation or reset. `.env.example` documents this one variable; **PHP does not automatically load `.env` here**, and no environment-loader package was added. A private `.env`, if used by your local tooling, is ignored and must not be published. Do not use the example placeholder as a password.
4. Seed official accounts are named `demo-official-1` through `demo-official-5`, with the original role distribution retained. Their password fields are deliberately non-login placeholders, not working MD5 hashes. No shared demo login is published. To explore login locally, explicitly configure a chosen synthetic account's password in the disposable database using the original MD5 format and a private local-only password. This is a legacy compatibility note, not a recommendation for password storage.
5. The original URL construction assumes a `/trackingsystem/` path in places. Use that local directory/alias when exploring the existing links. Missing includes, incomplete schema elements, and other historical assumptions may still prevent individual workflows from running.

The official creation/reset code still applies MD5 to a shared configured value, exactly as the original flow did to its embedded literal. If the environment variable is unset or empty, there is no newly added guard to prevent legacy empty-value hashing. Configure it before exercising those actions. This publication-only change is not authentication hardening.

## Synthetic data and asset substitutions

- Original person-linked SQL data was replaced with visibly fictional names, places, reserved `example.invalid` email addresses, zero contact placeholders, and demonstration records. Primary keys and recorder identifiers remain in place; role/status lookup values are retained. Log entries are fictional, not historical events.
- Five official-account records remain with non-login password markers. Four original plaintext-account rows in `tbluser` were omitted; its schema is unchanged.
- Numeric demonstration document identifiers use the `900xxx` range to fit the original integer columns. No missing QR columns or other schema elements were added.
- Fifteen cached, record-specific QR images retain their existing paths, names, and dimensions. The three clearance codes now address three synthetic clearance rows. All twelve permit samples address the one synthetic permit row; no extra permit records were invented to justify old cached images. These are relative local tracking links, not links to a live external service. Static fixture filenames were preserved; application QR-generation and filename-generation code is unchanged.
- Three large QR posters now decode only to `SANITIZED PORTFOLIO DEMO CL` or `SANITIZED PORTFOLIO DEMO BP`. They are intentionally nonfunctional demonstration messages. Their surrounding layouts, municipal logos, file paths, and dimensions are retained.
- One private photograph and one named signature image were replaced at their original paths and dimensions with neutral generated placeholders. The replacement signature is explicitly not a real signature.

No photographs, document records, credentials, or QR destinations from the private original should be reintroduced into this edition. Do not transfer the original Git history when creating a portfolio repository.

## Intentionally retained limitations

Legacy MD5/SHA-1 password handling, authentication and authorization weaknesses, session behavior, interpolated SQL, unauthenticated tracking/data exposure, upload behavior, and backup/setup/debug functionality were not redesigned or hardened. Some source paths reference missing tables, columns, or includes. Old libraries, templates, and known defects remain for authenticity and later, separately approved exploratory QA.

This edition makes no claim that every feature works or that the application is secure to run publicly. No runtime or regression-testing results are claimed by this publication pass.

## Attribution and publication rights

Existing third-party copyright notices and licenses remain intact for retained third-party material. For publication-rights sanitization, the former stock artwork at `Resident_Profiling/images/pregnant.jpg` was replaced with an independently AI-generated neutral heart-and-hands demonstration illustration, without using the original artwork as a reference. Its path, JPEG format, and 612-by-560 dimensions are unchanged; the former image's attribution and embedded metadata were not transferred to the replacement. Other retained third-party imagery, civic marks, and bundled assets remain subject to their owners' rights; this repository does not claim authorship or grant new rights over them.
