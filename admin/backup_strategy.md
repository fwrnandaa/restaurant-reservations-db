# Backup Strategy

## Project: Mochi House Reservation System

---

## Objective

To ensure the integrity, availability, and recoverability of the information stored in the **Mochi House Reservation System** database, minimizing the risk of data loss caused by human error, system failures, or major modifications.

---

## Scope

This strategy applies to the **`mochi_house`** database, which stores the information required for the operation of the reservation system.

The tables included in the backups are:

- `customers`
- `tables`
- `schedules`
- `reservations`

---

## Backup Policy

A **full database backup** shall be performed in the following situations:

- Before implementing significant changes to the database structure.
- Before deploying a new version of the system.
- Before executing bulk update or deletion operations.
- After completing the development of critical reservation-related features.
- As a preventive measure before maintenance activities.

---

## Backup Type

A **full logical backup** will be performed using the `mysqldump` utility included with MySQL.

This type of backup allows exporting both the database structure and data into a file with the `.sql` extension.

### Advantages

- Facilitates information recovery.
- Allows migration of the database to another environment.
- Generates text files that are easy to store and manage.
- Compatible with any standard MySQL installation.

---

## Backup Creation Procedure

1. Open a terminal or command prompt.
2. Navigate to the directory where the backup file will be stored.
3. Execute the following command:

```bash
mysqldump -u root -p mochi_house > mochi_house_backup.sql
```

### Command Description

| Element | Description |
|----------|------------|
| `mysqldump` | Utility used to export MySQL databases. |
| `-u root` | User account with database permissions. |
| `-p` | Prompts for the user's password. |
| `mochi_house` | Name of the database to be backed up. |
| `>` | Redirects the output to a file. |
| `mochi_house_backup.sql` | Generated file containing the database structure and data. |

---

## Backup Verification

Once the backup file has been generated, verify that:

- The file `mochi_house_backup.sql` exists.
- The file size is greater than 0 KB.
- The contents include statements such as `CREATE TABLE` and `INSERT INTO`.

These checks help ensure that the backup was generated successfully.

---

## Backup Restoration Procedure

In the event of data loss or when system recovery is required, follow these steps.

### 1. Create the Database (if it does not exist)

```sql
CREATE DATABASE mochi_house;
```

### 2. Restore the Data

```bash
mysql -u root -p mochi_house < mochi_house_backup.sql
```

### Command Description

| Element | Description |
|----------|------------|
| `mysql` | MySQL command-line client. |
| `-u root` | User account with sufficient privileges. |
| `-p` | Prompts for the corresponding password. |
| `mochi_house` | Database where the information will be restored. |
| `<` | Redirects the SQL file contents into MySQL. |
| `mochi_house_backup.sql` | File containing the previously generated backup. |

---

## Backup Storage

Backup files should be stored in a secure and organized location.

It is recommended to use filenames that include the generation date for easier identification.

### Examples

```text
mochi_house_backup_2026-06-10.sql
mochi_house_backup_2026-06-17.sql
mochi_house_backup_2026-06-24.sql
```

---

## Responsibilities

The development team is responsible for:

- Creating backups when required.
- Verifying the successful creation of backup files.
- Maintaining an up-to-date backup before making major changes.
- Executing restoration procedures when necessary.

---

## Conclusion

The backup strategy implemented for the **Mochi House Reservation System** aims to ensure project continuity and protect stored information. Regular backup creation and the existence of clear recovery procedures represent best practices in database administration and contribute to the overall reliability of the system.

---

# End of Document
