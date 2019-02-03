CREATE TABLE roles (
    id bigint,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    CONSTRAINT roles_pkey PRIMARY KEY (id)
);

CREATE TABLE users_roles (
	user_id bigint,
	role_id BIGINT,
	CONSTRAINT users_fk FOREIGN KEY (user_id)
        REFERENCES public.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT roles_fk FOREIGN KEY (role_id)
        REFERENCES public.roles (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);