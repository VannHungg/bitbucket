create table if not exists execution.production_order (
    id big_serial primary key,
    code text,
    serial_number_id bigint,
    fk_serial_number_id foreign key (serial_number_id) reference serial_number(id)
);

create table if not exists execution.serial_number (
    id big_serial primary key,
    code text
);