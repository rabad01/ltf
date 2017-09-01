
delete from countries

select *
from countries

insert into countries(name, created_at, updated_at)
values('Republica Domincana','2017-01-01','2017-01-01')


-- update countries
set id = 1
where id = 3


SELECT * FROM Regions

-- insert into Regions(name, country_id, created_at, updated_at )
values('Norte',1,'2017-01-01','2017-01-01')

-- insert into Regions(name, country_id, created_at, updated_at)
values('Sur',1,'2017-01-01','2017-01-01')

-- insert into Regions(name, country_id, created_at, updated_at)
values('Este',1,'2017-01-01','2017-01-01')

-- insert into Regions(name, country_id, created_at, updated_at)
values('Oeste',1,'2017-01-01','2017-01-01')

-- =-update Regions
set id = 4
where id =5

SELECT *
FROM provinces

-- insert into provinces(name, region_id, created_at, updated_at)
values('Santiago',1,'2017-01-01','2017-01-01')

-- insert into provinces(name, region_id, created_at, updated_at)
values('La Vega',1,'2017-01-01','2017-01-01')

-- insert into provinces(name, region_id, created_at, updated_at)
values('Santiago Rodriguez',1,'2017-01-01','2017-01-01')

-- insert into provinces(name, region_id, created_at, updated_at)
values('Puesto Plata',1,'2017-01-01','2017-01-01')

-- insert into provinces(name, region_id, created_at, updated_at)
values('Samana',1,'2017-01-01','2017-01-01')



SELECT *
FROM communities

insert into communities(name, province_id, created_at, updated_at)
values('Santiago',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Jánico',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Sabana',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Iglesia',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Puñal',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Villa Bisonó',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Villa González',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Tamboril',1,'2017-01-01','2017-01-01')

insert into communities(name, province_id, created_at, updated_at)
values('Licey',1,'2017-01-01','2017-01-01')


insert into communities(name, province_id, created_at, updated_at)
values('San José de las Matas',1,'2017-01-01','2017-01-01')



SELECT *
FROM locations

insert into locations(name, community_id, created_at, updated_at)
values('Santiago',1,'2017-01-01','2017-01-01')


insert into locations(name, community_id, created_at, updated_at)
values('El Rubio',10,'2017-01-01','2017-01-01')

insert into locations(name, community_id, created_at, updated_at)
values('La Cuesta',10,'2017-01-01','2017-01-01')

insert into locations(name, community_id, created_at, updated_at)
values('Las Placetas',10,'2017-01-01','2017-01-01')

insert into locations(name, community_id, created_at, updated_at)
values('Las Manaclas',10,'2017-01-01','2017-01-01')

    
insert into locations(name, community_id, created_at, updated_at)
values('Diferencia',10,'2017-01-01','2017-01-01')
    
    
SELECT *
FROM active_ingredients

insert into active_ingredients(description, under_insurance, insurance_coverage, created_at, updated_at)
values('Paracetamol',true,0,'2017-01-01','2017-01-01')

insert into active_ingredients(description, under_insurance, insurance_coverage, created_at, updated_at)
values('Salbutamol',false,0,'2017-01-01','2017-01-01')

insert into active_ingredients(description, under_insurance, insurance_coverage, created_at, updated_at)
values('Amoxicilina',false,0,'2017-01-01','2017-01-01')


select *
from ars


insert into ars(name, address,tel, cel, active, created_at, updated_at)
values('Palic Salud',null,null,null,1,'2017-01-01','2017-01-01')

insert into ars(name, address,tel, cel, active, created_at, updated_at)
values('Humano',null,null,null,1,'2017-01-01','2017-01-01')

insert into ars(name, address,tel, cel, active, created_at, updated_at)
values('Universal',null,null,null,1,'2017-01-01','2017-01-01')

insert into ars(name, address,tel, cel, active, created_at, updated_at)
values('Senasa',null,null,null,1,'2017-01-01','2017-01-01')



SELECT *
FROM labs

insert into labs(name, address, tel, cel, logo_file_name, active, created_at, updated_at)
values('Sanofi',null, null, null, null,1,'2017-01-01','2017-01-01')

insert into labs(name, address, tel, cel, logo_file_name, active, created_at, updated_at)
values('Sandox',null, null, null, null,1,'2017-01-01','2017-01-01')

insert into labs(name, address, tel, cel, logo_file_name, active, created_at, updated_at)
values('Pme',null, null, null, null,1,'2017-01-01','2017-01-01')


SELECT *
FROM payment_methods


INSERT INTO payment_methods(description, created_at, updated_at)
values('Efectivo', '2017-01-01','2017-01-01')

INSERT INTO payment_methods(description, created_at, updated_at)
values('Tarjeta', '2017-01-01','2017-01-01')


select * from holdings

insert into holdings(name, active, created_at, updated_at)
values('CAROL',1,'2017-01-01','2017-01-01')

insert into holdings(name, active, created_at, updated_at)
values('GBC',1,'2017-01-01','2017-01-01')

insert into holdings(name, active, created_at, updated_at)
values('HIDALGOS',1,'2017-01-01','2017-01-01')


SELECT * FROM order_statuses
1
INSERT INTO order_statuses(description, created_at, updated_at)
values('En Proceso','2017-01-01','2017-01-01')
2
INSERT INTO order_statuses(description, created_at, updated_at)
values('Ordenado','2017-01-01','2017-01-01')
3
INSERT INTO order_statuses(description, created_at, updated_at)
values('Confirmado','2017-01-01','2017-01-01')
4
INSERT INTO order_statuses(description, created_at, updated_at)
values('Cancelado','2017-01-01','2017-01-01')


SELECT * FROM order_item_statuses

INSERT INTO order_item_statuses(description, created_at, updated_at)
values('Ordenado','2017-01-01','2017-01-01')

INSERT INTO order_item_statuses(description, created_at, updated_at)
values('Desestimado','2017-01-01','2017-01-01')


select * from users

insert into users
values(0,'farma','enlinea','fel','fel','Red Dom',1,'0000000000','0000000000',1,'example@host.com',
'2017-07-01',1,'2017-01-01','2017-01-01')




SELECT * FROM products
  SELECT * FROM active_ingredients
  SELECT * FROM labs


insert into products(name, description,active_ingredient_id, metric, dosage, lab_id, receipt_required,
picture_file_name, active, created_at, updated_at)
values('Winasorb', 'Analgésico y antipirético.Para disminuir el dolor y la fiebre que se pueden presentar en la gripe, infecciones de garganta, bronquitis, etc., después de la vacunación.Dolor de cabeza, de oído, muscular, óseo y de la dentición.',
1, 'Miligramos', 500,1,1,'winasorb500.jpg',1,'2017-01-01','2017-01-01')



insert into products(name, description,active_ingredient_id, metric, dosage, lab_id, receipt_required,
picture_file_name, active, created_at, updated_at)
values('Salbutyl XD', 'Es un dilatador de las vías respiratorias. Este medicamento descomprime las vías respiratorias y reduce sus síntomas: disnea y respiración entrecortada o sibilante.',
2, 'Microgramos', 100,2,1,'salbutamol100.jpg',1,'2017-01-01','2017-01-01')


insert into products(name, description,active_ingredient_id, metric, dosage, lab_id, receipt_required,
picture_file_name, active, created_at, updated_at)
values('Amoxicut', 'La amoxicilina es un antibiótico semisintético derivado de la penicilina. Se trata de una amino penicilina. Actúa contra un amplio espectro de bacterias, tanto Gram positivos como Gram-negativos.',
3, 'Miligramos', 365,3,1,'amoxicilina.jpeg',1,'2017-01-01','2017-01-01')


select * from holdings

insert into holdings
values(0,'INDIVIDUAL',1,'2017-01-01','2017-01-01')

SELECT * FROM locations


SELECT * FROM drug_stores

insert into drug_stores(name, address, location_id, tel1, tel2, cel, email, contact,
hour_open_regular, hour_close_regular, days_regular, hour_open_other, hour_close_other, days_other,
logo_file_name, store_type/*1-Individual, 2-Holding*/,holding_id, created_at, updated_at)
values('Farmacia Carol', 'Calle 27 de Febrero #54',1,'0000000000','0000000000','0000000000','example@host.com','Juan Ras',
'8 AM', '6 PM', 'Lunes - Viernes', '9 AM', '3 PM', 'Sabado - Domingos', 'farcarol.png',2,1,'2017-01-01','2017-01-01')
 
 
insert into drug_stores(name, address, location_id, tel1, tel2, cel, email, contact,
hour_open_regular, hour_close_regular, days_regular, hour_open_other, hour_close_other, days_other,
logo_file_name, store_type/*1-Individual, 2-Holding*/,holding_id, created_at, updated_at)
values('Farmacia 11', 'Calle Israel #14',1,'0000000000','0000000000','0000000000','example@host.com','Momon',
'08:00:00', '20:00:00', 'Lunes - Jueves', '07:00:00', '20:00:00', 'Viernes - Domingos', 'far11.jpg',1,4,'2017-01-01','2017-01-01')
 
 
 insert into drug_stores(name, address, location_id, tel1, tel2, cel, email, contact,
hour_open_regular, hour_close_regular, days_regular, hour_open_other, hour_close_other, days_other,
logo_file_name, store_type/*1-Individual, 2-Holding*/,holding_id, created_at, updated_at)
values('Farmacia Robles', 'Calle 27 de Febrero #15',1,'0000000000','0000000000','0000000000','example@host.com','Fito',
'08:00:00', '18:00:00', 'Lunes - Jueves', '09:00:00', '15:00:00', 'Sabado - Domingos', 'farrobles.jpg',1,4,'2017-01-01','2017-01-01')
 


select * from drug_ars
select * from drug_stores

select * from ars
1	Palic Salud
2	Humano
3	Universal
4	Senasa

1 Farmacia Carol
4 Farmacia 11
5 Farmacia Robles

insert into drug_ars
values(0,1,1,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,1,2,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,1,3,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,1,4,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,4,1,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,4,2,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,5,1,1,'2017-01-01','2017-01-01');
insert into drug_ars
values(0,5,3,1,'2017-01-01','2017-01-01');



select * from drug_store_prices
1 Farmacia Carol
4 Farmacia 11 (2)
5 Farmacia Robles (3)
select * from products
1 Winasorb
2 Salbutyl XD
3 Amoxicut

insert into drug_store_prices
values(0,1,1,50.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,1,4,55.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,1,5,50.00,1,'2017-01-01','2017-01-01');

insert into drug_store_prices
values(0,2,1,200.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,2,4,230.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,2,5,190.00,1,'2017-01-01','2017-01-01');

insert into drug_store_prices
values(0,3,1,300.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,3,4,290.00,1,'2017-01-01','2017-01-01');
insert into drug_store_prices
values(0,3,5,295.00,1,'2017-01-01','2017-01-01');

