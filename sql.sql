use api_d

CREATE TABLE users (

   userId bigint(10) NOT NULL  auto_increment,
   fullname VARCHAR(50) NOT NULL  DEFAULT '',
   username VARCHAR(50) NOT NULL  DEFAULT '',
   email VARCHAR(50) NOT NULL  DEFAULT '',
   password VARCHAR(50) NOT NULL  DEFAULT '',
   `created_at ` datetime NOT NULL  DEFAULT current_timestamp(),
   updated_at VARCHAR(50) NOT NULL  DEFAULT current_timestamp() ON UPDATE current_timestamp(),
   genderId tinyint(1) NOT NULL  DEFAULT 0,
   roleId tinyint(1) NOT NULL  DEFAULT 0,

   PRIMARY_KEY(userId),
   UNIQUE_KEY username (username)
   UNIQUE_KEY email (email)

)

CREATE TABLE gender (

   genderId tinyint(1) NOT NULL  DEFAULT 0,
   gender VARCHAR(50) NOT NULL  DEFAULT '',
   `created_at ` datetime NOT NULL  DEFAULT current_timestamp(),
   updated_at VARCHAR(50) NOT NULL  DEFAULT current_timestamp() ON UPDATE current_timestamp(),
   

   PRIMARY_KEY(genderId),
   UNIQUE_KEY gender (gender)
  

)

CREATE TABLE roles (

   roleId tinyint(1) NOT NULL  DEFAULT 0,
   role VARCHAR(50) NOT NULL  DEFAULT '',
   `created_at ` datetime NOT NULL  DEFAULT current_timestamp(),
   updated_at VARCHAR(50) NOT NULL  DEFAULT current_timestamp() ON UPDATE current_timestamp(),
   

   PRIMARY_KEY(roleId),
   UNIQUE_KEY role (role)
  

)