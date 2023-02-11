CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "gender" char(1),
  "phone" varchar(17)
  );

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "duration" time,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "category_id" int
);

CREATE TABLE "course_video" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "course_id" int 
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "users_courses" (
  "id" serial PRIMARY KEY,
  "users_id" int,
  "courses_id" int 
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into users (
 name,
 last_name,
 email,
 password,
 age,
 gender,
 phone
) values (
'Alejandro',
'Castillo',
'ocastillo@fna.gov.co',
'123456',
'41',
'M',
'3102514263'
),(
'Luisa',
'Forero',
'luisita@gmail.com',
'123456',
'26',
'F',
'3222898817'
);
insert into courses (
  title, 
  description, 
  duration, 
  level,
  teacher
) values (
'Git',
'Git description',
'3:00:00',
'beginer',
'Camilo'
),
(
'Git Hub',
'Git Hub description',
'5:00:00',
'beguiner',
'Camilo'
);
insert into categories (
name
) values (
'programacion'
),('diseño');

insert into course_video (
title,
url
) values (
'comand window',
'http://comand_window'
),(
'git sintaxis',
'http://git_sintaxis'
);