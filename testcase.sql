USE photocol;
INSERT INTO user (email,username,password) VALUES("victorzh716@gmail.com","victor","password"),("victorz.beijing@gmail.com","victor","password"),("zhang20@cooper.edu","victor","password"),("zzh20000716@icloud.com","victor","password"),("zzh20000716@126.com","victor","password"),("victorz.cu@hotmail.com","victor","password"),("jlam@cooper.edu","john","*&^%E(&%^$#*&%*(%($#^%&%*(&(TR*&$*&TU*&$%&^$^#"),("richkid@cooper.edu","richard","wooolala"),("ti@cooper.edu","tiffany?","password");
INSERT INTO collection (name,pub) VALUES("Collection1",0),("boring",1),("test",1),("testtesttest",0),("hitiff",1);
INSERT INTO photo (uri,upload_date,description,uid,orig_uid) VALUES("cat.jpg", "990912","this is a cat",7,1),("gilbert.jpg", "990912","this is ???",9,2),("flower.jpg", "990912","this is a Richard",8,3);
INSERT INTO acl (cid,uid,role) VALUES(1,5,0),(1,1,2),(1,2,1),(2,6,2);
INSERT INTO icj (pid,cid) VALUES(1,1),(1,2),(1,3),(2,2);
