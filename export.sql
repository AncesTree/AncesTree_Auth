PGDMP             
        
    w            postgres    12.0 (Debian 12.0-2.pgdg100+1)    12.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13408    postgres    DATABASE     x   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2957                        3079    16397    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            �           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            �            1259    16392    invitations    TABLE     :   CREATE TABLE public.invitations (
    id uuid NOT NULL
);
    DROP TABLE public.invitations;
       public         heap    postgres    false            �            1259    16445    users    TABLE     �   CREATE TABLE public.users (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    2            �          0    16392    invitations 
   TABLE DATA           )   COPY public.invitations (id) FROM stdin;
    public          postgres    false    203   �       �          0    16445    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    204   �                  2606    16396    invitations invitations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_pkey;
       public            postgres    false    203                       2606    16455    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    204                       2606    16453    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    204            �      x������ � �      �   �   x�u�;��0Dk�.4�!%��A��%2��Gnr�u�M�L���Ͱ��.bB�+
V�DƬ�Ԇ��m~���!Bz�.=�!PM\(X�P�3��z�2��%���l�����f�R!U�h1����v�FH�+��!+�-tV��s��A�á�^9�<��/7��S�n�עq����K����,ņ��$�]�6k?����C����{��k,ɓ`PH>`� Ŗ F���\H5�O=�,�zڮ����q���v_     