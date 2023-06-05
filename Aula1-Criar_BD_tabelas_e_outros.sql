create database aulaSQL
default character set utf8
default collate utf8_general_ci;

create table users(
	id int auto_increment not null unique,
    first_name varchar(150) not null,
    last_name varchar(150),
    email varchar(255) not null unique,
	PRIMARY KEY (id)
);
create table roles(
	id int auto_increment not null unique,
    name varchar(100) not null,
    PRIMARY KEY(id)
);
create table users_roles(
	user_id int not null,
    role_id int not null,
    primary key(user_id, role_id),
    foreign key (user_id) references users(id),
    foreign key (role_id) references roles(id)
);
create table profiles_users(
	id int not null auto_increment, 
    bio varchar(300),
    description_user varchar(300),
    user_id int not null,
    primary key (id),
    foreign key (user_id) references users(id)
);

