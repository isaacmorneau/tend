create or replace function trigger_update_timestamp()
returns trigger as $$
begin
    new.updated = now();
    return new;
end;
$$ language plpgsql;

--a single thing, person, organization, whatever
create sequence entity_id_seq;

create table entity (
    id integer not null default nextval('entity_id_seq') primary key,
    created timestamp not null default now()
);

create trigger set_timestamp
before update on entity
for each row
execute procedure trigger_update_timestamp();

--text notes stuck to stuff
create table snippet (
    id serial not null primary key,
    entity_id integer not null default currval('entity_id_seq') references entity(id),
    data text not null,
    created timestamp not null default now(),
    updated timestamp not null default now()
);

create trigger set_timestamp
before update on snippet
for each row
execute procedure trigger_update_timestamp();


--things we call the entity
create table alias (
    id serial not null primary key,
    entity_id integer not null default currval('entity_id_seq') references entity(id),
    name varchar(256) not null,
    created timestamp not null default now(),
    updated timestamp not null default now()
);

create trigger set_timestamp
before update on alias
for each row
execute procedure trigger_update_timestamp();

