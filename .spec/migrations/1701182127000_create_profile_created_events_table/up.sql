BEGIN;
    CREATE TABLE public.profile_created_events (id serial, transaction_hash varchar NOT NULL, log_index int8 NOT NULL, profile_id varchar, nonce varchar, name varchar, metadata json, owner varchar, anchor varchar, contract_name varchar, contract_address varchar, block_hash varchar, block_number int8, block_timestamp timestamptz, chain_id varchar);
    COMMENT ON TABLE public.profile_created_events IS '@unique log_index,transaction_hash|@fieldName getProfileCreatedEvent|ben.Registry contract events on Goerli.';
    ALTER TABLE public.profile_created_events ADD CONSTRAINT pk_35bxwmuuwxhgxmb73axrea PRIMARY KEY (id);
    CREATE UNIQUE INDEX idx_nbrdddsqra9de2ftrcwbwv ON public.profile_created_events (log_index, transaction_hash);
COMMIT;