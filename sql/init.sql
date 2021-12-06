CREATE database devoria_article_service;

CREATE TABLE `account` (
    `id` int NOT null AUTO_INCREMENT,
    `email` varchar(50) NOT null,
    `password` text not null,
    `firstName` varchar(100) NOT null,
    `lastName` varchar(100) NOT null,
    `createdAt` datetime(3) NOT null,
    `lastModified` datetime(3) NOT null,
    PRIMARY KEY(`id`)
);

CREATE TABLE `article` (
    `id` int NOT null AUTO_INCREMENT,
    `authorId` int NOT null,
    `title` varchar(255) NOT null,
    `subtitle` varchar(255) NOT null,
    `content` text NOT null,
    `status` varchar(38) NOT null,
    `createdAt` datetime(3) NOT null,
    `publishedAt` datetime(3) NOT null,
    `lastModifiedAt` datetime(3) NOT null,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`authorId`) REFERENCES account(id)
);