# KNCS Case Study
## SYS366 - Group Project 

## Getting the Source

```bash

git clone https://github.com/tangoslee/kncs

```

## Directory Structure

```bash

kncs
├── index.html
├── media
│   ├── index.php
│   ├── sys366-group9-lab2.docx
│   ├── sys366-group9-lab3-GuozhaoLiang.doc
│   ├── sys366-group9-lab3-SangminLee.docx
│   ├── sys366-group9-lab4-GuozhaoLiang.png
│   ├── sys366-group9-lab4-GuozhaoLiang.uml
│   ├── sys366-group9-lab4-SangminLee.png
│   ├── sys366-group9-lab4_SangminLee.uml
│   ├── sys366-group9-lab5-GuozhaoLiang.docx
│   ├── sys366-group9-lab5-SangminLee.docx
│   └── z.uml
├── package.json
├── public
│   ├── bootstrap
│   ├── css 
│   │   ├── agency.css
│   ├── img 
│   ├── jquery
│   ├── js
│   │   ├── agency.js
│   │   ├── contact_me.js
├── README.md
├── server.js
└── views
    ├── docs
    │   ├── casestudy.hbs
    │   ├── class_and_classroom_facilitation.hbs
    │   ├── equipment_rental_and_servicing.hbs
    │   └── stakeholder.hbs
    ├── home.hbs
    ├── layouts
    │   └── main.hbs
    └── partials
        ├── businessarea.hbs
        ├── casestudy.hbs
        ├── classroom_facilitation.hbs
        ├── contact.hbs
        ├── documents.hbs
        ├── equipment_rental.hbs
        ├── modal
        │   ├── modal_casestudy.hbs
        │   ├── modal_classroom_facilitation.hbs
        │   ├── modal_equipment_rental.hbs
        │   ├── modal_img.hbs
        │   └── modal_stakeholder.hbs
        ├── schedule.hbs
        ├── stakeholder.hbs
        └── team.hbs

27 directories, 141 files

```

## Routing Plan

| URI | Template | Description | Example |
| --- | --- | --- | --- |
| / | /view/home.hbs | the main page | http://kncs.herokuapp.com/ |
| /docs/$subpage | /view/docs/$subpage.hbs | dynamic pages with sub_titles | http://kncs.herokuapp.com/docs/equipment_rental_and_servicing  http://kncs.herokuapp.com/docs/class_and_classroom_facilitation |
| /downloads/$file | /media/$file | download files | http://kncs.herokuapp.com/downloads/sys366-group9-lab4-GuozhaoLiang.png   http://kncs.herokuapp.com/downloads/sys366-group9-lab4-SangminLee.png |
| /media/$file | /media/$file | static links with files | http://kncs.herokuapp.com/media/sys366-group9-lab4-GuozhaoLiang.png   http://kncs.herokuapp.com/downloads/sys366-group9-lab4-SangminLee.png |

### Static Path

```bash

    public
    media

```
