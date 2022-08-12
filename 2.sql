insert into tarifs values (1,'Тариф за выдачу кредита', 10);
insert into tarifs values (2,'Тариф за открытие счета', 10);
insert into tarifs values (3,'Тариф за обслуживание карты', 10);

insert into product_type values (1, 'КРЕДИТ', '2018-01-01', null, 1);
insert into product_type values (2, 'ДЕПОЗИТ', '2018-01-01', null, 2);
insert into product_type values (3, 'КАРТА', '2018-01-01', null, 3);

insert into clients values (1, 'Сидоров Иван Петрович', 'Россия, Московская облать, г. Пушкин', '2001-01-01', 'Россия, Московская облать, г. Пушкин, ул. Грибоедова, д. 5', '2222 555555, выдан ОВД г. Пушкин, 10.01.2015');
insert into clients values (2, 'Иванов Петр Сидорович', 'Россия, Московская облать, г. Клин', '2001-01-01', 'Россия, Московская облать, г. Клин, ул. Мясникова, д. 3', '4444 666666, выдан ОВД г. Клин, 10.01.2015');
insert into clients values (3, 'Петров Сиодр Иванович', 'Россия, Московская облать, г. Балашиха', '2001-01-01', 'Россия, Московская облать, г. Балашиха, ул. Пушкина, д. 7', '4444 666666, выдан ОВД г. Клин, 10.01.2015');

insert into products values (1, 1, 'Кредитный договор с Сидоровым И.П.', 1, '2015-06-01', null);
insert into products values (2, 2, 'Депозитный договор с Ивановым П.С.', 2, '2017-08-01', null);
insert into products values (3, 3, 'Карточный договор с Петровым С.И.', 3, '2017-08-01', null);


insert into accounts values (1, 'Кредитный счет для Сидоровым И.П.', -2000, 1, '2015-06-01', null, 1, '45502810401020000022');
insert into accounts values (2, 'Депозитный счет для Ивановым П.С.', 6000, 2, '2017-08-01', null, 2, '42301810400000000001');
insert into accounts values (3, 'Карточный счет для Петровым С.И.', 8000, 3, '2017-08-01', null, 3, '40817810700000000001');

insert into records values (1, 1, 5000, 1, '2015-06-01');
insert into records values (2, 0, 1000, 1, '2015-07-01');
insert into records values (3, 0, 2000, 1, '2015-08-01');
insert into records values (4, 0, 3000, 1, '2015-09-01');
insert into records values (5, 1, 5000, 1, '2015-10-01');
insert into records values (6, 0, 3000, 1, '2015-10-01');

insert into records values (7, 0, 10000, 2, '2017-08-01');
insert into records values (8, 1, 1000, 2, '2017-08-05');
insert into records values (9, 1, 2000, 2, '2017-09-21');
insert into records values (10, 1, 5000, 2, '2017-10-24');
insert into records values (11, 0, 6000, 2, '2017-11-26');

insert into records values (12, 0, 120000, 3, '2017-09-08');
insert into records values (13, 1, 1000, 3, '2017-10-05');
insert into records values (14, 1, 2000, 3, '2017-10-21');
insert into records values (15, 1, 5000, 3, '2017-10-24');

