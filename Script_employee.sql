create table if not exists office (
	id SERIAL primary key,
	name_office VARCHAR(80) unique not null
);

create table if not exists employee (
	id SERIAL primary key,
	name_employee VARCHAR(80) unique not null,
	office_id INTEGER  not null references office(id),
	chief_id INTEGER references employee(id)
);