INSERT INTO roles (name)
VALUES ('ROLE_USER'),
       ('ROLE_EMPLOYEE'),
       ('ROLE_ADMIN');

INSERT INTO status_user (name)
VALUES ('active'),
       ('inactive'),
       ('confirmed'),
       ('not confirmed');


INSERT INTO users (username, password, first_name, last_name, patronymic, email, work_phone, mobile_phone, status_user_id)
VALUES ('admin', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i', 'Admin', 'Admin', 'Adminovich',
        'admin@gmail.com', '565685', '+79881111111', 1);

INSERT INTO users_roles (user_id, role_id)
VALUES (1, 1),
       (1, 2),
       (1, 3);

INSERT INTO topics (title, path)
VALUES ('Тема 1', 'тема_1'),
       ('Тема 2', 'тема_2');

INSERT INTO system_titles (title, path)
VALUES ('Система 1', 'система_1'),
       ('Система 2', 'система_2'),
       ('Система 3', 'система_3'),
       ('Система 4', 'система_3'),
       ('Система 5', 'система_3'),
       ('Система 6', 'система_3'),
       ('Система 7', 'система_3'),
       ('Система 8', 'система_3'),
       ('Система 9', 'система_3'),
       ('Система 10', 'система_3'),
       ('Система 11', 'система_3'),
       ('Система 12', 'система_3'),
       ('Система 13', 'система_3'),
       ('Система 14', 'система_3'),
       ('Система 15', 'система_3'),
       ('Система 16', 'система_3'),
       ('Система 17', 'система_3'),
       ('Система 18', 'система_3'),
       ('Система 19', 'система_3'),
       ('Система 20', 'система_3');

INSERT INTO topic_system_title
VALUES (1, 1),
       (2, 2),
       (2, 3),
       (1, 4),
       (1, 5),
       (1, 6),
       (1, 7),
       (1, 8),
       (1, 9),
       (1, 10),
       (1, 11),
       (1, 12),
       (1, 13),
       (1, 14),
       (1, 15),
       (1, 16),
       (1, 17),
       (1, 18),
       (1, 19),
       (1, 20);

INSERT INTO system_component_titles (title, path)
VALUES ('Компонент Системы', 'компонент_системы/');

INSERT INTO device_titles (title, path)
VALUES ('Прибор 1 1', 'device_1/'),
       ('Прибор 2 1', 'device_2/'),
       ('Прибор 3 1', 'device_3/'),
       ('Прибор 4 1', 'device_4/'),
       ('Прибор 5 1', 'device_5/'),
       ('Прибор 1 2', 'device_6/'),
       ('Прибор 2 2', 'device_7/'),
       ('Прибор 3 2', 'device_8/');

INSERT INTO system_titles_device_titles
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (2, 6),
       (2, 7),
       (2, 8);

INSERT INTO device_component_titles (title, device_title_id)
VALUES ('СЧ 1 1', 1),
       ('СЧ 2 1', 1),
       ('СЧ 3 1', 1),
       ('СЧ 1 2', 2),
       ('СЧ 2 2', 2);

INSERT INTO companies (title, email)
VALUES ('тест 1', '1@bb'),
       ('тест 2', '2@bb');



INSERT INTO systems (title_system_id, number, purpose, purpose_passport, vintage, vp_number, accept_otk_date, accept_vp_date, user_id)
VALUES  ('1', '0354501', 'Testing', 'not to crash', '2001-3-1', 45, '2001-3-1', '2000-1-1', '1'),
        ('2', '0354502', 'Testing', 'not to crash', '2000-1-2', 45, '2000-1-2', '2000-1-1', '1'),
        ('3', '035453', 'Testing', 'not to crash', '2001-1-1', 45, '2001-1-1', '2000-1-1', '1'),
        ('4', '035454', 'Testing', 'not to crash', '2000-3-2', 45, '2000-3-2', '2000-1-1', '1'),
        ('5', '0354515', 'Testing', 'not to crash', '2001-1-1', 45, '2001-1-1', '2000-1-1', '1'),
        ('6', '0354516', 'Testing', 'not to crash', '2000-1-2', 45, '2000-1-2', '2000-1-1', '1'),
        ('7', '0354527', 'Testing', 'not to crash', '2001-3-1', 45, '2001-3-1', '2000-1-1', '1'),
        ('8', '0354528', 'Testing', 'not to crash', '2000-1-1', 45, '2000-1-1', '2000-1-1', '1'),
        ('9', '0354529', 'Testing', 'not to crash', '2001-1-1', 45, '2001-1-1', '2000-1-1', '1'),
        ('10', '0354530', 'Testing', 'not to crash', '2000-3-2', 45, '2000-3-2', '2000-1-1', '1'),
        ('11', '0354531', 'Testing', 'not to crash', '2001-1-1', 45, '2001-1-1', '2000-1-1', '1'),
        ('12', '0354512', 'Testing', 'not to crash', '2000-1-1', 45, '2000-1-1', '2000-1-1', '1'),
        ('13', '0354513', 'Testing', 'not to crash', '2001-3-1', 45, '2001-3-1', '2000-1-1', '1'),
        ('14', '0354594', 'Testing', 'not to crash', '2000-1-2', 45, '2000-1-2', '2000-1-1', '1'),
        ('15', '0354595', 'Testing', 'not to crash', '2001-1-2', 45, '2001-1-2', '2000-1-1', '1'),
        ('16', '0354566', 'Testing', 'not to crash', '2000-3-1', 45, '2000-3-1', '2000-1-1', '1'),
        ('17', '0354577', 'Testing', 'not to crash', '2001-1-1', 45, '2001-1-1', '2000-1-1', '1'),
        ('18', '0354578', 'Testing', 'not to crash', '2000-1-1', 45, '2000-1-1', '2000-1-1', '1'),
        ('19', '0354579', 'Testing', 'not to crash', '2001-3-2', 45, '2001-3-2', '2000-1-1', '1'),
        ('20', '0354520', 'Testing', 'not to crash', '2000-1-2', 45, '2000-1-2', '2000-1-1', '1'),
        ('2', '0354522', 'Testing', 'not to crash', '2000-1-1', 45, '2000-1-1', '2000-1-1', '1');


INSERT INTO devices (device_title_id, number, purpose, purpose_passport, system_id, vintage, vp_number, accept_otk_date, accept_vp_date, location, entity_status, created_at, updated_at, user_id)
VALUES  (1, 666148838500, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (2, 666148838501, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (3, 666148838502, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (4, 666148838503, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (5, 666148838504, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (6, 666148838505, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (7, 666148838506, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (8, 666148838507, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (1, 666148838508, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (2, 666148838509, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (3, 666148838510, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (4, 666148838511, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (5, 666148838512, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (6, 666148838513, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (7, 666148838514, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (8, 666148838515, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (1, 666148838516, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (2, 666148838517, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (3, 666148838518, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (4, 666148838519, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (5, 666148838520, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (6, 666148838521, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1),
        (7, 666148838522, 'Testing', 'not to crash', 1, '2000-1-2', 14, '2000-1-1', '2000-1-1', 0, 1, '2000-1-1', '2000-1-1', 1);


INSERT INTO invoices (number, invoice_date, path, from_company_id, destination_id, description, entity_status, user_id)
VALUES  ('000', '2019-1-12', '/home/intruder/invoice.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('001', '2019-1-1', '/home/intruder/invoice1.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('002', '2019-1-2', '/home/intruder/invoice3.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('003', '2019-1-3', '/home/intruder/invoice5.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('004', '2019-1-4', '/home/intruder/invoice7.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('005', '2019-1-5', '/home/intruder/invoice12.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('006', '2019-1-6', '/home/intruder/invoice2.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('007', '2019-1-7', '/home/intruder/invoice4.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('008', '2019-1-8', '/home/intruder/invoice5.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('009', '2019-1-9', '/home/intruder/invoice6.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('010', '2019-1-10', '/home/intruder/invoice87.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('011', '2019-1-11', '/home/intruder/invoice12.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('012', '2019-1-12', '/home/intruder/invoice35.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('013', '2019-1-13', '/home/intruder/invoice12.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('014', '2019-1-14', '/home/intruder/invoice56.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('015', '2019-1-15', '/home/intruder/invoice78.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('016', '2019-1-16', '/home/intruder/invoice12.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('017', '2019-1-17', '/home/intruder/invoice511234.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('018', '2019-1-18', '/home/intruder/invoice1234.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('019', '2019-1-19', '/home/intruder/invoice12341.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('020', '2019-1-20', '/home/intruder/invoice7565.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('021', '2019-1-21', '/home/intruder/invoice3434.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('022', '2019-1-22', '/home/intruder/invoice3452.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('023', '2019-1-23', '/home/intruder/invoice6776.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1'),
        ('024', '2019-1-24', '/home/intruder/invoice5675.pdf', '1', '2', 'Прибыл из пункта А в пункт Б', 1, '1'),
        ('025', '2019-1-25', '/home/intruder/invoice5567.pdf', '2', '1', 'Прибыл из пункта Б в пункт А', 1, '1');

INSERT INTO acts_input_control (number, invoice_id, act_date, path, result, description, user_id)
VALUES
('000', 2, '2020-2-20', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('001', 1, '2019-4-15', '/home/intruder/invoice1.pdf', 1, 'Все ок', 1),
('002', 2, '2020-3-23', '/home/intruder/invoice2.pdf', 1, 'Все ок', 1),
('003', 3, '2019-4-19', '/home/intruder/invoice3.pdf', 1, 'Все ок', 1),
('004', 4, '2020-3-23', '/home/intruder/invoice4.pdf', 1, 'Все ок', 1),
('005', 5, '2019-1-19', '/home/intruder/invoice5.pdf', 1, 'Все ок', 1),
('006', 6, '2020-2-20', '/home/intruder/invoice6.pdf', 1, 'Все ок', 1),
('008', 7, '2019-4-15', '/home/intruder/invoice8.pdf', 1, 'Все ок', 1),
('007', 8, '2020-3-23', '/home/intruder/invoice7.pdf', 1, 'Все ок', 1),
('019', 9, '2019-4-19', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('018', 10, '2020-3-23', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('017', 11, '2019-4-15', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('016', 12, '2020-2-20', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('015', 13, '2019-1-19', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('014', 14, '2020-3-21', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('013', 15, '2019-4-15', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('012', 16, '2020-3-21', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('011', 17, '2019-4-19', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('010', 19, '2020-2-20', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('024', 23, '2019-4-15', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('023', 26, '2020-3-23', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('035', 25, '2019-1-19', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('026', 20, '2020-3-23', '/home/intruder/invoice.pdf', 1, 'Все ок', 1),
('027', 21, '2019-4-15', '/home/intruder/invoice.pdf', 1, 'Все ок', 1);

