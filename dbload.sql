CREATE DATABASE IF NOT EXISTS photocol;
USE photocol;
SHOW DATABASES;

/* main user table */
CREATE TABLE IF NOT EXISTS user (
    uid INT                     NOT NULL AUTO_INCREMENT,
    email VARCHAR(320)          UNIQUE NOT NULL,
    username VARCHAR(50)        UNIQUE NOT NULL,

    /* bcrypt hash length < 60: https://stackoverflow.com/a/5882472/2397327 */
    password VARCHAR(60)        NOT NULL,

    display_name VARCHAR(50),
    profile_photo INT,
    INDEX(username),
    FOREIGN KEY(profile_photo) REFERENCES photo(pid) ON DELETE SET NULL,
    PRIMARY KEY(uid)
);

/* main collection table */
CREATE TABLE IF NOT EXISTS collection (
    cid INT                     NOT NULL AUTO_INCREMENT,
    pub TINYINT(1)              NOT NULL,
    name VARCHAR(50)            NOT NULL,
    uri VARCHAR(50)             NOT NULL,
    cover_photo INT,
    INDEX(uri),
    FOREIGN KEY(cover_photo) REFERENCES photo(pid) ON DELETE SET NULL,
    PRIMARY KEY(cid)
);

/* main photo table */
CREATE TABLE IF NOT EXISTS photo (
    pid INT                     NOT NULL AUTO_INCREMENT,
    uri VARCHAR(30)             NOT NULL,
    filename VARCHAR(255)       NOT NULL,
    mime_type VARCHAR(10)       NOT NULL,
    upload_date DATE            NOT NULL,
    caption VARCHAR(1000),
    uid INT                     NOT NULL,
    orig_uid INT,

    /* selected (optional) photo metadata */
    exposure_time DOUBLE,
    f_number DOUBLE,
    iso INT,
    width INT,
    height INT,
    capture_date DATE,

    INDEX(uri),
    FOREIGN KEY(uid) REFERENCES user(uid) ON DELETE CASCADE,
    FOREIGN KEY(orig_uid) REFERENCES user(uid) ON DELETE SET NULL,
    PRIMARY KEY(pid)
);

/* access control list (ACL) */
CREATE TABLE IF NOT EXISTS acl (
    cid INT                     NOT NULL,
    uid INT                     NOT NULL,
    role INT                    NOT NULL,
    FOREIGN KEY(cid) REFERENCES collection(cid) ON DELETE CASCADE,
    FOREIGN KEY(uid) REFERENCES user(uid) ON DELETE CASCADE,
    PRIMARY KEY(cid, uid)
);

/* image-collection junction (ICJ) */
CREATE TABLE IF NOT EXISTS icj (
    pid INT                     NOT NULL,
    cid INT                     NOT NULL,
    FOREIGN KEY(pid) REFERENCES photo(pid) ON DELETE CASCADE,
    FOREIGN KEY(cid) REFERENCES collection(cid) ON DELETE CASCADE,
    PRIMARY KEY(pid, cid)
);

/* friend list */
CREATE TABLE IF NOT EXISTS friends (
    uid1 INT                    NOT NULL,
    uid2 INT                    NOT NULL,
    FOREIGN KEY(uid1) REFERENCES user(uid) ON DELETE CASCADE,
    FOREIGN KEY(uid2) REFERENCES user(uid) ON DELETE CASCADE,
    PRIMARY KEY(uid1, uid2)
);
