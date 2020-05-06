/* create test cases */
USE photocol;

INSERT INTO user
    (email,username,password)
VALUES
    ("victorzh716@gmail.com","victor1","password"),
    ("victorz.beijing@gmail.com","victor2","password"),
    ("zhang20@cooper.edu","victor3","password"),
    ("zzh20000716@icloud.com","victor4","password"),
    ("zzh20000716@126.com","victor5","password"),
    ("victorz.cu@hotmail.com","victor6","password"),
    ("jlam@cooper.edu","jon","*&^%E(&%^$#*&%*(%($#^%&%*(&(TR*&$*&TU*&$%&^$^#"),
    ("richkid@cooper.edu","richard","wooolala"),
    ("ti@cooper.edu","tiff","password");

INSERT INTO collection
    (name,pub,uri)
VALUES
    ("Collection1",0,"collection1"),
    ("boring",1,"boring"),
    ("test",1,"test"),
    ("testtesttest",0,"testtesttest"),
    ("hitiff",1,"hitiff");

INSERT INTO photo
    (uri,upload_date,description,uid,orig_uid)
VALUES
    ("cat.jpg", "990912","this is a cat",7,1),
    ("gilbert.jpg", "990912","this is ???",9,2),
    ("flower.jpg", "990912","this is a Richard",8,3);

INSERT INTO acl
    (cid,uid,role)
VALUES
    (1,5,0),
    (1,1,2),
    (1,2,1),
    (2,6,2);

INSERT INTO icj
    (pid,cid)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,2);
