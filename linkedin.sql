drop database linkedin;


create database linkedin;


use linkedin;



create table admin(
    id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,

    primary key(id)
);



insert into admin
value(1,"Rehan",now(),now()),
(2,"Amrish",now(),now());

 

create table users(
	id int,
    name varchar(255),
    password varchar(255),
    bio varchar(255),
    dob date,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into users
value(1,"Rehan","rehan@199","Hi, I'm Rehan, basically I'm a shuttle player","1990/06/02",now(),now(),1,1),
(2,"Akash","akash@135","create your own ideas","1999/05/17",now(),now(),1,1),
(3,"Bala","balu@123","I'm very loving guy to travel","1991/07/18",now(),now(),1,1),
(4,"Vignesh","vignesh@12345","You harvest what you sow","1989/02/01",now(),now(),1,1),
(5,"Deepak","deepu@987","New life New begining","1993/12/06",now(),now(),1,1),
(6,"Lokesh","loki@357","Beauty is not in our faces, its something else is in our minds like good thinking","1992/02/10",now(),now(),1,1),
(7,"Kishore","kishore@123","Rest as a cool, work as a fire","1992/05/26",now(),now(),1,1),
(8,"Guna","guna@123","Make everyone happy and then enjoy","1992/10/15",now(),now(),1,1),
(9,"Dinesh","dineshepsi@567","I love Myself","1997/11/20",now(),now(),1,1),
(10,"Sai Kiran","google@12345","innovative work will groom you","1999/01/01",now(),now(),1,1),
(11,"Sri vatsan","watsan@2468","Laziness destroys your etiquette and good manner","2000/12/26",now(),now(),1,1),
(12,"Gokul","Gokulan@123","Tomorrow is an uncertain life","2001/03/10",now(),now(),1,1),
(13,"Amrish","amrish@123","Hello everyone, I'm Amrish S, I love to play Shuttle cock and I love cooking","2004/06/27",now(),now(),1,1),
(14,"Janani","jaanu@123","I love my lovable person","2002/07/03",now(),now(),1,1),
(15,"Sudha","sudha@567"," ","1997/09/25",now(),now(),1,1),
(16,"Deena","deena@1996","Do your work like a fire","1996/07/18",now(),now(),1,1),
(17,"Deepika","deepika@123"," ","1997/07/13",now(),now(),1,1),
(18,"Jeni","jenifer@246","All are equal in front of Gods","2000/10/19",now(),now(),1,1),
(19,"Yamini","yamini@135","Silence is louder than words","1995/07/11",now(),now(),1,1),
(20,"Aishwariya","aishu@357"," ","1990/09/06",now(),now(),1,1),
(21,"Allen Sanjay","allen@123","I love travelling around the wrold","1997/12/25",now(),now(),1,1),
(22,"Mahesh","magi@234","I'm a 'BOXER'","2000/04/03",now(),now(),1,1),
(23,"Manigandan","mani@9876","I love teaching","1996/10/23",now(),now(),1,1),
(24,"Benjamin","benju@123","A good Student comes from a good Teacher","1990/12/27",now(),now(),1,1),
(25,"Sangeetha","sangeetha@256","Practice makes the man perfect","1994/04/06",now(),now(),1,1);



create table user_email(
    id int,
    user_id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into user_email
value(1,1,"rehan@gmail.com",now(),now(),1,1),
(2,1,"usamarehan@gmail.com",now(),now(),1,1),
(3,2,"akashs@gmail.com",now(),now(),1,1),
(4,3,"bala@gmail.com",now(),now(),1,1),
(5,4,"vignesh@gmail.com",now(),now(),1,1),
(6,4,"vicky@gmail.com",now(),now(),1,1),
(7,5,"deepakm@gmail.com",now(),now(),1,1),
(8,6,"lokeshc@gmail.com",now(),now(),1,1),
(9,7,"kishore@gmail.com",now(),now(),1,1),
(10,8,"gunasekar@gmail.com",now(),now(),1,1),
(11,9,"dineshepsi@gmail.com",now(),now(),1,1),
(12,10,"saikiran@gmail.com",now(),now(),1,1),
(13,11,"watsan@gmail.com",now(),now(),1,1),
(14,12,"Gokulapriyan@gmail.com",now(),now(),1,1),
(15,13,"amrishsekar@gmail.com",now(),now(),1,1),
(16,13,"amrishsdckap@gmail.com",now(),now(),1,1),
(17,14,"jananirishi@gmail.com",now(),now(),1,1),
(18,15,"sudha@gmail.com",now(),now(),1,1),
(19,15,"sudhadeena@gmail.com",now(),now(),1,1),
(20,16,"deenasudha@gmail.com",now(),now(),1,1),
(21,17,"deepika@gmail.com",now(),now(),1,1),
(22,18,"jenifer@gmail.com",now(),now(),1,1),
(23,19,"yamini@gmail.com",now(),now(),1,1),
(24,19,"yaminisarath@gmail.com",now(),now(),1,1),
(25,20,"aishwariya@gmail.com",now(),now(),1,1),
(26,21,"allensanjay@gmail.com",now(),now(),1,1),
(27,22,"magi@gmail.com",now(),now(),1,1),
(28,23,"manigandan@gmail.com",now(),now(),1,1),
(29,24,"benju@gmail.com",now(),now(),1,1),
(30,25,"sangeetha@gmail.com",now(),now(),1,1);



create table packages(
    id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into packages
value (1,"3 months",now(),now(),1,1),
(2,"6 months",now(),now(),1,1),
(3,"9 months",now(),now(),1,1),
(4,"1 year",now(),now(),1,1);



create table subscription(
    id int,
    user_id int,
    package_id int,
    valid_on date,
    is_active int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (package_id) references packages (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into subscription
value(1,1,3,"2021/06/03",0,now(),now(),1,1),
(2,1,2,"2023/04/30",1,now(),now(),1,1),
(3,2,2,"2023/05/01",1,now(),now(),1,1),
(4,3,1,"2022/12/30",1,now(),now(),1,1),
(5,8,4,"2023/11/03",1,now(),now(),1,1),
(6,14,2,"2022/04/27",0,now(),now(),1,1),
(7,19,3,"2019/02/27",0,now(),now(),1,1),
(8,24,1,"2023/01/30",1,now(),now(),1,1),
(9,20,1,"2022/09/30",0,now(),now(),1,1),
(10,22,3,"2020/10/30",0,now(),now(),1,1),
(11,12,4,"2023/07/01",1,now(),now(),1,1);



create table postType(
	id int,
    type varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into postType
value(1,"text",now(),now(),1,1),
(2,"photo",now(),now(),1,1),
(3,"video",now(),now(),1,1);




create table posts(
	id int,
    user_id int,
    description varchar (255),
    postType_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (postType_id) references postType (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)

);



insert into posts
value(1,1,"Kill them with your success Bury them with your smile",2,now(),now(),1,1),
(2,1,"HBD Janani",3,now(),now(),1,1),
(3,2," ",3,now(),now(),1,1),
(4,4,"Happy birthday ",3,now(),now(),1,1),
(5,5,"jaichitom maara",3,now(),now(),1,1),
(6,6,"magizhvithu magizh",1,now(),now(),1,1),
(7,7,"Music Mood",3,now(),now(),1,1),
(8,7,"travelling time",2,now(),now(),1,1),
(9,8,"Hello World",3,now(),now(),1,1),
(10,9,"Dance is my profession",3,now(),now(),1,1),
(11,10,"We did it",2,now(),now(),1,1),
(12,10,"Merry christmas",3,now(),now(),1,1),
(13,11,"I love santa",2,now(),now(),1,1),
(14,12,"Happy new year",2,now(),now(),1,1),
(15,13,"Iniya puthaandu nalvazhthukal Janani",3,now(),now(),1,1),
(16,14,"Good work Amrish S",2,now(),now(),1,1),
(17,15,"Awesome Rehan",2,now(),now(),1,1),
(18,16,"Good Work Rehan KU",2,now(),now(),1,1),
(19,17," ",2,now(),now(),1,1),
(20,18,"HBD Guna",3,now(),now(),1,1),
(21,19," ",3,now(),now(),1,1),
(22,19,"Wish you many more happy returns of the day Janani",2,now(),now(),1,1),
(23,20,"White Queen Janani",3,now(),now(),1,1),
(24,21,"Now I am a Soldier",2,now(),now(),1,1),
(25,22," ",1,now(),now(),1,1),
(26,23," ",3,now(),now(),1,1),
(27,23,"MY WIFE MY LIFE",2,now(),now(),1,1),
(28,24," ",2,now(),now(),1,1),
(29,25,"Happy birthday Rehan",2,now(),now(),1,1),
(30,25,"Good Morning",1,now(),now(),1,1);



create table viewed(
    id int,
    user_id int,
    post_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (post_id) references posts (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into viewed
value(1,2,1,now(),now(),1,1),
(2,1,2,now(),now(),1,1),
(3,1,3,now(),now(),1,1),
(4,2,1,now(),now(),1,1),
(5,3,1,now(),now(),1,1),
(6,4,30,now(),now(),1,1),
(7,3,2,now(),now(),1,1),
(8,4,1,now(),now(),1,1),
(9,5,1,now(),now(),1,1),
(10,25,1,now(),now(),1,1),
(11,10,10,now(),now(),1,1),
(12,10,17,now(),now(),1,1),
(13,13,23,now(),now(),1,1),
(14,14,22,now(),now(),1,1),
(15,18,26,now(),now(),1,1),
(16,20,19,now(),now(),1,1),
(17,22,8,now(),now(),1,1),
(18,20,4,now(),now(),1,1),
(19,12,13,now(),now(),1,1),
(20,20,16,now(),now(),1,1),
(21,19,24,now(),now(),1,1),
(22,18,10,now(),now(),1,1),
(23,18,10,now(),now(),1,1),
(24,18,10,now(),now(),1,1),
(25,25,6,now(),now(),1,1),
(26,23,9,now(),now(),1,1),
(27,11,7,now(),now(),1,1),
(28,15,15,now(),now(),1,1),
(29,15,18,now(),now(),1,1),
(30,1,23,now(),now(),1,1),
(31,7,20,now(),now(),1,1),
(32,19,20,now(),now(),1,1),
(33,3,20,now(),now(),1,1),
(34,3,12,now(),now(),1,1),
(35,3,12,now(),now(),1,1),
(36,24,14,now(),now(),1,1),
(37,24,2,now(),now(),1,1),
(38,24,17,now(),now(),1,1),
(39,10,11,now(),now(),1,1),
(40,10,5,now(),now(),1,1),
(41,10,5,now(),now(),1,1),
(42,9,5,now(),now(),1,1),
(43,15,5,now(),now(),1,1),
(44,19,13,now(),now(),1,1),
(45,17,17,now(),now(),1,1),
(46,6,18,now(),now(),1,1),
(47,6,2,now(),now(),1,1),
(48,9,2,now(),now(),1,1),
(49,1,2,now(),now(),1,1),
(50,6,2,now(),now(),1,1),
(51,15,29,now(),now(),1,1),
(52,19,7,now(),now(),1,1),
(53,20,14,now(),now(),1,1),
(54,20,15,now(),now(),1,1),
(55,20,23,now(),now(),1,1),
(56,13,28,now(),now(),1,1),
(57,2,26,now(),now(),1,1),
(58,2,15,now(),now(),1,1),
(59,3,21,now(),now(),1,1),
(60,24,21,now(),now(),1,1);



create table liked(
	id int,
    user_id int,
    post_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,


    primary key (id),
    foreign key (user_id) references users(id),
    foreign key (post_id) references posts(id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into liked
value(1,2,1,now(),now(),1,1),
(2,1,1,now(),now(),1,1),
(3,1,3,now(),now(),1,1),
(4,2,20,now(),now(),1,1),
(5,3,1,now(),now(),1,1),
(6,4,1,now(),now(),1,1),
(7,3,2,now(),now(),1,1),
(8,4,11,now(),now(),1,1),
(9,5,1,now(),now(),1,1),
(10,25,1,now(),now(),1,1),
(11,10,10,now(),now(),1,1),
(12,10,17,now(),now(),1,1),
(13,13,23,now(),now(),1,1),
(14,14,22,now(),now(),1,1),
(15,18,10,now(),now(),1,1),
(16,19,10,now(),now(),1,1),
(17,20,10,now(),now(),1,1),
(18,25,6,now(),now(),1,1),
(19,23,9,now(),now(),1,1),
(20,11,7,now(),now(),1,1),
(21,15,15,now(),now(),1,1),
(22,15,18,now(),now(),1,1),
(23,1,23,now(),now(),1,1),
(24,7,20,now(),now(),1,1),
(25,19,20,now(),now(),1,1),
(26,3,20,now(),now(),1,1),
(27,3,26,now(),now(),1,1),
(28,3,3,now(),now(),1,1),
(29,24,14,now(),now(),1,1),
(30,24,24,now(),now(),1,1),
(31,24,17,now(),now(),1,1),
(32,10,11,now(),now(),1,1),
(33,6,29,now(),now(),1,1),
(34,9,30,now(),now(),1,1),
(35,1,2,now(),now(),1,1),
(36,6,6,now(),now(),1,1),
(37,15,12,now(),now(),1,1),
(38,19,7,now(),now(),1,1),
(39,20,14,now(),now(),1,1),
(40,20,15,now(),now(),1,1),
(41,20,23,now(),now(),1,1),
(42,13,25,now(),now(),1,1),
(43,15,25,now(),now(),1,1),
(44,2,15,now(),now(),1,1),
(45,3,21,now(),now(),1,1),
(46,24,21,now(),now(),1,1);



create table comments(
    id int,
    user_id int,
    post_id int,
    commentContent varchar(255),
    comment_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (post_id) references posts (id),
    foreign key (comment_id) references comments (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into comments
values(1,4,2,"Convey my wishes to him",NULL,now(),now(),1,1),
(2,1,2,"Yeah sure",1,now(),now(),1,1),
(3,14,22,"Thank you",NULL,now(),now(),1,1),
(4,19,22,"Today is your day, blast it",3,now(),now(),1,1),
(5,14,22,"Sure Yamini",4,now(),now(),1,1),
(6,13,16,"Thank you Janani",NULL,now(),now(),1,1),
(7,14,16,"You are always welcome",6,now(),now(),1,1),
(8,13,24,"Allen, Please stay beware about saving our country.",NULL,now(),now(),1,1),
(9,21,24,"It's my pleasure to save our country",8,now(),now(),1,1),
(10,13,24,"I trust you",9,now(),now(),1,1),
(11,10,17,"It's really a good work",NULL,now(),now(),1,1),
(12,15,17,"Thank you, He is my friend",11,now(),now(),1,1),
(13,9,30,"Gud mrng, hav a grt day",NULL,now(),now(),1,1),
(14,2,15,"Janani is my friend, convey my wishes to him",NULL,now(),now(),1,1),
(15,13,15,"Surely I'll tell your wishes to her",14,now(),now(),1,1);



create table typeEducation(
    id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into typeEducation
value(1,"School",now(),now(),1,1),
(2,"College",now(),now(),1,1);



create table education(
    id int,
    user_id int,
    typeEducation_id int,
    institute varchar(255),
    study varchar(255),
    start_date date,
    end_date date,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (typeEducation_id) references typeEducation (id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into education
value(1,1,1,"St.Thomas Hr.Sec.School","SSLC","1993/06/01","2004/03/20",now(),now(),1,1),
(2,1,1,"St.Thomas Hr.Sec.School","HSC","2004/06/01","2006/04/30",now(),now(),1,1),
(3,1,2,"MIT","B.Tech-IT","2006/08/20","2010/02/15",now(),now(),1,1),
(4,2,1,"Govt Boys Hr.Sec.School","SSLC","2002/06/01","2012/04/30",now(),now(),1,1),
(5,2,2,"Central Polytechnic College","Diploma in Mech","2012/07/10","2015/05/02",now(),now(),1,1),
(6,3,1,"Govt Hr.Sec.School","SSLC","1994/06/01","2003/04/16",now(),now(),1,1),
(7,3,2,"Central Polytechnic College","Diploma in Mech","2003/07/15","2006/05/09",now(),now(),1,1),
(8,3,2,"Jaya Engineering College","BE.Mech","2006/08/15","2010/04/19",now(),now(),1,1),
(9,4,1,"Govt Hr.Sec.School","SSLC","1992/06/10","2001/04/15",now(),now(),1,1),
(10,4,1,"Govt Hr.Sec.School","HSC","2001/06/05","2003/03/18",now(),now(),1,1),
(11,4,2,"Alagappa College of Arts and Science","B.Sc.Computer Science","2003/07/17","2006/04/02",now(),now(),1,1),
(12,4,2,"Alagappa College of Arts and Science","M.Sc.Computer Science","2006/08/12","2008/05/20",now(),now(),1,1),
(13,5,1,"Minerva Matriculation School","SSLC","1996/06/10","2005/04/19",now(),now(),1,1),
(14,5,1,"SMDPVC Hr.Sec.School","HSC","2005/06/12","2007/05/17",now(),now(),1,1),
(15,5,2,"Central Polytechnic College","Diploma in ECE","2007/07/14","2010/05/15",now(),now(),1,1),
(16,6,1,"Don Bosco Hr.Sec.School","SSLC","1995/06/13","2004/05/17",now(),now(),1,1),
(17,6,1,"Don Bosco Hr.Sec.School","HSC","2004/06/17","2006/04/02",now(),now(),1,1),
(18,6,2,"Pachayappa's college of Engineering","Automobile Engineering","2006/09/10","2010/04/02",now(),now(),1,1),
(19,7,1,"St.Paul's Hr.Sec.School","SSLC","1995/06/13","2004/05/17",now(),now(),1,1),
(20,7,1,"St.Peter's Hr.Sec.School","HSC","2004/06/17","2006/04/02",now(),now(),1,1),
(21,7,2,"St.Peter's college of Arts and Science","BCA","2006/08/12","2009/05/12",now(),now(),1,1),
(22,7,2,"St.Peter's college of Arts and Science","MCA","2009/08/17","2010/05/01",now(),now(),1,1),
(23,8,1,"Kanyakumari Matriculation School","SSLC","1995/06/02","2004/04/18",now(),now(),1,1),
(24,8,1,"Karikalan Hr.Sec.School","HSC","2004/06/01","2006/04/30",now(),now(),1,1),
(25,8,2,"MIT","Artificial Intelligence","2006/07/18","2010/02/19",now(),now(),1,1),
(26,9,1,"Dilli Matriculation School","SSLC","2000/06/04","2009/04/16",now(),now(),1,1),
(27,9,1,"Rolex Hr.Sec.School","HSC","2009/08/02","2011/03/30",now(),now(),1,1),
(28,9,2,"Saveetha college of Engineering","BE.EEE","2011/09/01","2015/04/16",now(),now(),1,1),
(29,10,1,"St.Paul's Hr.Sec.School","SSLC","2002/06/03","2012/03/30",now(),now(),1,1),
(30,10,1,"St.Paul's Hr.Sec.School","HSC","2012/06/06","2014/04/12",now(),now(),1,1),
(31,10,2,"Sesha College of Engineering","BE.Mech","2015/09/18","2019/05/20",now(),now(),1,1),
(32,11,1,"St.Thomas Hr.Sec.School","SSLC","2003/06/03","2013/04/30",now(),now(),1,1),
(33,11,1,"St.Thomas Hr.Sec.School","HSC","2013/06/01","2015/04/02",now(),now(),1,1),
(34,11,2,"Rajalakshmi Engineering College","BE.ECE","2015/09/25","2019/05/30",now(),now(),1,1),
(35,12,1,"Thangam Matriculation Hr.Sec.School","SSLC","2004/06/02","2014/04/30",now(),now(),1,1),
(36,12,1,"Thangam Matriculation Hr.Sec.School","HSC","2014/06/08","2016/03/15",now(),now(),1,1),
(37,12,2,"Dr.MGR college of Engineering","BE.ECE","2016/08/25","2021/04/30",now(),now(),1,1),
(38,13,1,"Minerva Matriculation School","SSLC","2010/06/02","2020/04/20",now(),now(),1,1),
(39,13,1,"SMDPVC Hr.Sec.School","HSC","2020/06/10","2022/03/29",now(),now(),1,1),
(40,14,1,"St.Joseph Girls Hr.Sec.School","SSLC","2007/06/01","2017/04/20",now(),now(),1,1),
(41,14,1,"St.Joseph Girls Hr.Sec.School","HSC","2017/06/04","2019/03/19",now(),now(),1,1),
(42,14,2,"Maharaj college of Arts and Science","BCA","2019/08/15","2022/05/20",now(),now(),1,1),
(43,15,1,"Bargav Matriculation Hr.Sec.School","SSLC","2002/06/03","2012/04/30",now(),now(),1,1),
(44,15,1,"Sathya Matriculation Girls Hr.Sec.School","HSC","2012/06/05","2014/03/17",now(),now(),1,1),
(45,15,2,"SRM college of Engineering","BE.ECE","2014/08/12","2019/03/20",now(),now(),1,1),
(46,16,1,"Minerva Matriculation School","SSLC","2000/06/02","2010/04/15",now(),now(),1,1),
(47,16,1,"Anitha Methodist Hr.Sec.School","HSC","2010/06/07","2012/03/18",now(),now(),1,1),
(48,16,2,"Jaya Engineering College","BE.ECE","2012/08/08","2016/05/30",now(),now(),1,1),
(49,17,1,"MCTM Hr.Sec.School","SSLC","2001/06/04","2011/04/20",now(),now(),1,1),
(50,17,1,"MCTM Girls Hr.Sec.School","HSC","2011/06/03","2013/03/30",now(),now(),1,1),
(51,17,2,"Rajalakshmi college Arts and Science","B.com","2013/07/16","2016/03/25",now(),now(),1,1),
(52,17,2,"Rajalakshmi college Arts and Science","M.com","2016/08/21","2018/04/24",now(),now(),1,1),
(53,18,1,"Thangam Matriculation Hr.Sec.School","SSLC","2004/06/02","2014/04/30",now(),now(),1,1),
(54,18,1,"SMDPVC Hr.Sec.School","HSC","2014/06/17","2016/03/15",now(),now(),1,1),
(55,18,2,"Maaran College of Engineering","BE.EEE","2016/08/29","2020/05/21",now(),now(),1,1),
(56,19,1,"Seventh Day Matriculation Hr.sec.School","SSLC","1999/06/04","2009/04/12",now(),now(),1,1),
(57,19,1,"Seventh Day Matriculation Hr.sec.School","HSC","2009/06/18","2011/03/20",now(),now(),1,1),
(58,19,2,"Saveetha college of Engineering","B.Tech-IT","2011/08/21","2015/05/15",now(),now(),1,1),
(59,19,2,"Govt college of Arts and Science","B.Sc.Computer Science","2015/07/17","2018/03/15",now(),now(),1,1),
(60,20,1,"Seventh Day Matriculation Hr.sec.School","SSLC","1995/06/03","2005/04/13",now(),now(),1,1),
(61,20,1,"Seventh Day Matriculation Hr.sec.School","HSC","2005/06/03","2007/03/30",now(),now(),1,1),
(62,20,2,"Loyola college of Engineering","BE.CSC","2007/09/23","2011/04/27",now(),now(),1,1),
(63,21,1,"Military School","SSLC","2001/06/03","2011/04/01",now(),now(),1,1),
(64,21,1,"Military School","HSC","2011/06/09","2013/03/29",now(),now(),1,1),
(65,21,2,"Military Training Campus","Soldier Training","2013/10/16","2018/03/19",now(),now(),1,1),
(66,22,1,"Govt Hr.Sec.School","SSLC","2005/06/04","2015/04/14",now(),now(),1,1),
(67,22,1,"Jagan Boxing School","Boxer Training","2015/05/01","2018/01/01",now(),now(),1,1),
(68,23,1,"Seventh Day Matriculation Hr.sec.School","SSLC","2000/06/02","2010/04/29",now(),now(),1,1),
(69,23,1,"Govt Hr.Sec.School","HSC","2010/06/20","2012/03/09",now(),now(),1,1),
(70,23,2,"Anna college of Arts and Science","B.Sc.Chemistry","2012/09/27","2015/05/20",now(),now(),1,1),
(71,24,1,"Punitha Matriculation Hr.Sec.School","SSLC","1994/06/05","2004/05/01",now(),now(),1,1),
(72,24,1,"Punitha Matriculation Hr.Sec.School","HSC","2004/06/20","2006/04/20",now(),now(),1,1),
(73,24,2,"Gurumoorthi college of Arts and Science","B.Sc.Maths","2006/07/19","2009/05/15",now(),now(),1,1),
(74,24,2,"Gurumoorthi college of Arts and Science","M.Sc.Maths","2009/08/11","2011/02/21",now(),now(),1,1),
(75,25,1,"Minerva Matriculation School","SSLC","1999/06/01","2009/04/15",now(),now(),1,1),
(76,25,1,"Anitha Methodist Hr.Sec.School","HSC","2009/06/07","2011/03/22",now(),now(),1,1),
(77,25,2,"Anna College of Arts and Science","B.Sc.Physics","2011/08/12","2014/04/29",now(),now(),1,1);



create table workExperience(
    id int,
    user_id int,
    company varchar(255),
    position varchar(255),
    city varchar(255),
    state varchar(255),
    start_date date,
    end_date date,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key (id),
    foreign key (user_id) references users(id),
    foreign key (created_by_id) references admin(id),
    foreign key (updated_by_id) references admin(id)
);



insert into workExperience
value(1,13,"DCKAP","software developer traniee","Chennai","Tamilnadu","2022/09/12",NULL,now(),now(),1,1),
(2,2,"CEAT","HR","Sriperambatur","Tamilnadu","2010/06/02","2022/12/01",now(),now(),1,1),
(3,2,"DCKAP","Designer","Chennai","Tamilnadu","2022/09/12",NULL,now(),now(),1,1),
(4,3,"CTS","Product developer","Tambaram","Tamilnadu","2015/06/27","2020/06/05",now(),now(),1,1),
(5,3,"MRF","Production Manager","Sriperambatur","Tamilnadu","2020/08/12","2022/04/15",now(),now(),1,1),
(6,3,"DCKAP","Full stack developer","Banglore","Karnataka","2022/09/12",NULL,now(),now(),1,1),
(7,4,"HL Klemove","Testing Engineer","Sriperambatur","Tamilnadu","2010/03/10","2020/06/11",now(),now(),1,1),
(8,4,"DCKAP","Backend developer","Chennai","Tamilnadu","2020/09/12",NULL,now(),now(),1,1),
(9,5,"DCKAP","Designer","Paalakkad","Kerala","2011/01/19","2019/04/20",now(),now(),1,1),
(10,5,"SIPCOT","Manager","Sriperambatur","Tamilnadu","2019/05/10","2022/05/22",now(),now(),1,1),
(11,6,"CEAT","Production Manager","","Tamilnadu","2010/09/02","2019/03/23",now(),now(),1,1),
(12,6,"MRF","General Manager","Sriperambatur","Tamilnadu","2019/03/30",NULL,now(),now(),1,1),
(13,7,"DCKAP","Software Engineer","Chennai","Tamilnadu","2011/06/11","2022/12/30",now(),now(),1,1),
(14,8,"HCL","Backend Trainer","Sholinganallur","Tamilnadu","2010/06/19",NULL,now(),now(),1,1),
(15,9,"AMAZON","Employee","Saravanampatti","Tamilnadu","2016/02/01",NULL,now(),now(),1,1),
(16,10,"ZEPTO","Delivery Boy","Chennai","Tamilnadu","2019/07/13",NULL,now(),now(),1,1),
(17,10,"SWIGGY","Delivery Boy","Chennai","Tamilnadu","2017/01/01",NULL,now(),now(),1,1),
(18,11,"AMAZON","Employee","Saravanampatti","Tamilnadu","2019/09/12",NULL,now(),now(),1,1),
(19,12,"DCKAP","Employee","Chennai","Tamilnadu","2021/06/16",NULL,now(),now(),1,1),
(20,1,"WIPRO","Full Stack Developer","Chennai","Tamilnadu","2010/08/19","2014/01/30",now(),now(),1,1),
(21,1,"DCKAP","Full Stack Developer","Chennai","Tamilnadu","2014/02/10","2020/12/30",now(),now(),1,1),
(22,1,"CTS","Full Stack Developer","Tambaram","Tamilnadu","2021/01/10",NULL,now(),now(),1,1),
(23,14,"DCKAP","Product Designer","Chennai","Tamilnadu","2022/09/12",NULL,now(),now(),1,1),
(24,15,"FLIPCART","Employee","Kalakkuruchi","Tamilnadu","2019/10/16","2022/11/30",now(),now(),1,1),
(25,15,"HL KLEMOVE","Employee","Sriperambatur","Tamilnadu","2022/12/05",NULL,now(),now(),1,1),
(26,16,"HL KLEMOVE","Senior Employee","Sriperambatur","Tamilnadu","2018/01/01",NULL,now(),now(),1,1),
(27,17,"CTS","Product Designer","Chennai","Tamilnadu","2019/03/01","2022/12/15",now(),now(),1,1),
(28,18,"LENSKART","Quality Analist","Erode","Tamilnadu","2020/09/14",NULL,now(),now(),1,1),
(29,19,"LENSKART","HR","Erode","Tamilnadu","2018/06/03",NULL,now(),now(),1,1),
(30,20,"AISHU SPA","Managing Director","Coimbatore","Tamilnadu","2013/01/14",NULL,now(),now(),1,1),
(31,21,"MILITARY","Senior Soldier","Srinagar","Jammu and Kashmir","2018/06/01",NULL,now(),now(),1,1),
(32,22,"MAHESH BOXING CLUB","Boxing Trainer","Chennai","Tamilnadu","2018/03/25",NULL,now(),now(),1,1),
(33,23,"ST.MARY'S HR.SEC.SCHOOL","Chemistry Teacher","Kanyakumari","Tamilnadu","2016/01/01",NULL,now(),now(),1,1),
(34,24,"ST.MARY'S HR.SEC.SCHOOL","Principal","Kanyakumari","Tamilnadu","2011/06/01",NULL,now(),now(),1,1),
(35,25,"ST.JOSEPH BOYS HR.SEC.SCHOOL","Physics Teacher","Kanyakumari","Tamilnadu","2020/06/01",NULL,now(),now(),1,1);



-- Notes:
-- SELECT - extracts data from a database

-- UPDATE - updates data in a database

-- DELETE - deletes data from a database

-- INSERT INTO - inserts new data into a database

-- CREATE DATABASE - creates a new database

-- ALTER DATABASE - modifies a database

-- CREATE TABLE - creates a new table

-- ALTER TABLE - modifies a table

-- DROP TABLE - deletes a table

-- TRUNCATE TABLE - deletes the data inside a table, but not the table itself.

-- CREATE INDEX - creates an index (search key)

-- DROP INDEX - deletes an index

-- SELECT DISTINCT - statement is used to return only distinct (different) values

-- WHERE - WHERE clause is used to filter records

-- The WHERE clause can be combined with AND, OR, and NOT operators

-- The AND and OR operators are used to filter records based on more than one condition

-- The AND operator will works only the conditions are TRUE

-- The OR operator will works when the conditions are TRUE or FALSE

-- The NOT operator removes given values in the query and then shows the other values in the table 

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order

-- The SELECT TOP clause is used to specify the number of records to return

-- The MIN() function returns the smallest value of the selected column

-- The MAX() function returns the largest value of the selected column

-- WHERE CustomerName LIKE 'a%'	-  Finds any values that start with "a"

-- WHERE CustomerName LIKE '%a' -  Finds any values that end with "a"

-- WHERE CustomerName LIKE '%or%'  -  Finds any values that have "or" in any position

-- WHERE ContactName LIKE 'a%o'  -  Finds any values that start with "a" and ends with "o"

-- right means ending letter in a word, left means starting letter in a word





-- queries
select * from users;


select bio from users where id=5;


select bio from users where id in (1,2,3,4,5);


select name,typeEducation_id,institute,study from users join education on users.id = education.user_id; 


select distinct company from workExperience;


select position from workExperience where user_id = 13;


select * from users where dob >= "2000/01/01";


SELECT * FROM education WHERE start_date BETWEEN "2004/06/01" AND "2010/04/15" and typeEducation_id = 1;


SELECT * FROM education WHERE start_date BETWEEN "2004/06/01" AND "2010/04/15";


SELECT * FROM workExperience WHERE Company LIKE '%s';


SELECT * FROM workExperience WHERE city = "Tambaram" AND state = "Tamilnadu";


SELECT * FROM users WHERE name="Amrish" OR name="Rehan";
--OR command will work, if any one of the condition is TRUE. But AND command will works, all the conditions are true.     


SELECT * FROM users WHERE NOT name = "Amrish";


SELECT * FROM viewed WHERE NOT user_id = 13 AND NOT (post_id=21 OR post_id=19);


SELECT * FROM comments ORDER BY user_id ASC;


SELECT distinct * FROM education ORDER BY institute ASC;


SELECT id,company, position FROM workExperience WHERE end_date IS NOT NULL;


SELECT id,company, position FROM workExperience WHERE end_date IS NULL;


UPDATE users SET name='KU Rehan' WHERE name='Rehan';


UPDATE workExperience SET city ='Chennai' WHERE user_id = 6;


update users set created_by_id = 2, updated_by_id = 2 where id = 1;


SELECT * FROM workExperience WHERE company = "HL KLEMOVE" LIMIT 3;


SELECT Count(*) FROM education; 


SELECT Count(Distinct institute) FROM education; 


SELECT id,name,MIN(dob) AS earlyBorn  FROM users; 


SELECT MAX(dob) FROM users; 


SELECT AVG(dob) FROM users;


SELECT SUM(id) FROM users;


SELECT * FROM users WHERE name LIKE "a%h";


SELECT * FROM users WHERE name NOT LIKE "r%";


SELECT * FROM users WHERE id BETWEEN 0 AND 15 AND name NOT IN ("Amrish","KU Rehan");


SELECT name FROM users WHERE id BETWEEN 0 AND 15;


SELECT name FROM users WHERE id BETWEEN 0 AND 15 order by dob;


SELECT  user_id, CONCAT (company,', ',city,', ',state) AS location FROM workExperience;


select distinct city from workExperience where right (city,1) in ('a','e','i','o','u'); 


select name from users where left (name,1) in ('a','e','i','o','u') and right (name,1) in ('a','e','i','o','u');


select * from users where right (id,1) in ('0','2','4','6','8');
-- (or)
SELECT * FROM users WHERE users.id % 2 = 0;


select distinct * from users where not left (name,1) in ('a','e','i','o','u') or not right (name,1) in ('a','e','i','o','u');


select name, institute, study from users join education on users.id = education.user_id;


select users.id, name, if(is_active, 1, 0) as status from users right join subscription on users.id = subscription.user_id;


SELECT user_id, is_active,
CASE
    WHEN is_active = 1 THEN 'premium user' 
    WHEN is_active = 0 THEN 'Not premium user'
    ELSE 'Nothing'
END as status
FROM subscription;


SELECT name, ASCII(name) AS NumCodeOfFirstChar FROM users;


TRUNCATE TABLE comments;