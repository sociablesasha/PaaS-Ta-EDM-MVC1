# PaaS-Ta EDM QNA
## QNA for Client, Admin
### Purpose
1. Client QNA.
2. Admin QNA.
3. Separate Client, Admin.

### Technical Stack
* HTML
* CSS
* Javascript
* JSP
* MySQL


## Photo
### Competition Information
<img width="1680" alt="2018-08-22 1 57 13" src="https://user-images.githubusercontent.com/31611484/44443993-845cd300-a615-11e8-9293-3640cc50b889.png">

### How to participate
<img width="1680" alt="2018-08-22 1 57 17" src="https://user-images.githubusercontent.com/31611484/44443996-8a52b400-a615-11e8-8f91-c727f6736326.png">

### PaaS-Ta Guide
<img width="1680" alt="2018-08-22 1 57 20" src="https://user-images.githubusercontent.com/31611484/44443998-8b83e100-a615-11e8-99f1-000d924a7439.png">

### Data-API Link
<img width="1680" alt="2018-08-22 1 57 23" src="https://user-images.githubusercontent.com/31611484/44444003-8e7ed180-a615-11e8-8b13-af166e355555.png">

### Client QNA List
<img width="1680" alt="2018-08-22 1 57 32" src="https://user-images.githubusercontent.com/31611484/44444005-92aaef00-a615-11e8-85d3-2e849496ac28.png">

### Client QNA Write
<img width="1680" alt="2018-08-22 1 59 26" src="https://user-images.githubusercontent.com/31611484/44444546-49a86a00-a618-11e8-9cb1-905390c9873d.png">

### Client QNA Password For View
<img width="1680" alt="2018-08-22 1 57 35" src="https://user-images.githubusercontent.com/31611484/44444518-2a114180-a618-11e8-9ba5-61aba67f78f8.png">

### Client QNA View
<img width="1680" alt="2018-08-22 2 01 48" src="https://user-images.githubusercontent.com/31611484/44444543-457c4c80-a618-11e8-85fb-d5f842320503.png">

### Admin QNA Login
<img width="1680" alt="2018-08-22 2 06 31" src="https://user-images.githubusercontent.com/31611484/44444544-457c4c80-a618-11e8-9e94-3f1bd8806aa3.png">

### Admin QNA List
<img width="1680" alt="2018-08-22 2 06 54" src="https://user-images.githubusercontent.com/31611484/44444525-372e3080-a618-11e8-8f0d-934639677723.png">

### Admin QNA Wating List
<img width="1680" alt="2018-08-22 2 06 58" src="https://user-images.githubusercontent.com/31611484/44444526-37c6c700-a618-11e8-994e-0dd950fb8592.png">

### Admin QNA Done List
<img width="1680" alt="2018-08-22 2 07 00" src="https://user-images.githubusercontent.com/31611484/44444528-37c6c700-a618-11e8-90c1-5538d9ba14df.png">

### Admin QNA View
<img width="1680" alt="2018-08-22 2 07 04" src="https://user-images.githubusercontent.com/31611484/44444529-37c6c700-a618-11e8-85a3-bfc597c7c05b.png">

### Admin QNA Reply
<img width="1680" alt="2018-08-22 2 07 12" src="https://user-images.githubusercontent.com/31611484/44444530-385f5d80-a618-11e8-9e83-d589383d6f72.png">

### Error
<img width="1680" alt="2018-08-22 1 57 41" src="https://user-images.githubusercontent.com/31611484/44444517-28477e00-a618-11e8-8e5c-a947893e84e6.png">


## Database
### QNA
Column | Datatype | PK | NN | UQ | UN | AI | Default
--- | --- | --- | --- | --- | --- | --- | --
index | INT(11) | Yes | Yes |  | Yes | Yes | 
username | VARCHAR(10) |  | Yes |  |  |  | 
password | VARCHAR(10) |  | Yes |  |  |  | 
title | VARCHAR(50) |  | Yes |  |  |  |
content | TEXT |  | Yes |  |  |  | 
date | DATETIME |  | Yes |  |  |  | CURRENT_TIMESTAMP
reply | TEXT |  |  |  |  |  |
available | VARCHAR(10) |  | Yes |  |  |  |


## Histories
    2018.08.01. ERD, DB.
    2018.08.02. Client - DAO, DTO, JSP.
    2018.08.03. Server - DAO, DTO, JSP.