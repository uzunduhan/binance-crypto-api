PGDMP                 
        z            SadeDb    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    SadeDb    DATABASE     e   CREATE DATABASE "SadeDb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "SadeDb";
                postgres    false            �            1259    16414    bchbtc    TABLE     ]   CREATE TABLE public.bchbtc (
    id bigint NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.bchbtc;
       public         heap    postgres    false            �            1259    16413    bchbtc_id_seq    SEQUENCE     �   ALTER TABLE public.bchbtc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bchbtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16395    bnbbtc    TABLE     ]   CREATE TABLE public.bnbbtc (
    id bigint NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.bnbbtc;
       public         heap    postgres    false            �            1259    16400    bnbbtc_id_seq    SEQUENCE     �   ALTER TABLE public.bnbbtc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bnbbtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    16402    ethbtc    TABLE     ]   CREATE TABLE public.ethbtc (
    id bigint NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.ethbtc;
       public         heap    postgres    false            �            1259    16401    ethbtc_id_seq    SEQUENCE     �   ALTER TABLE public.ethbtc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ethbtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    16420    ltcbtc    TABLE     ]   CREATE TABLE public.ltcbtc (
    id bigint NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.ltcbtc;
       public         heap    postgres    false            �            1259    16419    ltcbtc_id_seq    SEQUENCE     �   ALTER TABLE public.ltcbtc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ltcbtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16408    xrpbtc    TABLE     ]   CREATE TABLE public.xrpbtc (
    id bigint NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.xrpbtc;
       public         heap    postgres    false            �            1259    16407    xrpbtc_id_seq    SEQUENCE     �   ALTER TABLE public.xrpbtc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.xrpbtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214                      0    16414    bchbtc 
   TABLE DATA           +   COPY public.bchbtc (id, value) FROM stdin;
    public          postgres    false    216                    0    16395    bnbbtc 
   TABLE DATA           +   COPY public.bnbbtc (id, value) FROM stdin;
    public          postgres    false    209   `                 0    16402    ethbtc 
   TABLE DATA           +   COPY public.ethbtc (id, value) FROM stdin;
    public          postgres    false    212   �                 0    16420    ltcbtc 
   TABLE DATA           +   COPY public.ltcbtc (id, value) FROM stdin;
    public          postgres    false    218   $       
          0    16408    xrpbtc 
   TABLE DATA           +   COPY public.xrpbtc (id, value) FROM stdin;
    public          postgres    false    214   �                  0    0    bchbtc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bchbtc_id_seq', 470, true);
          public          postgres    false    215                       0    0    bnbbtc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bnbbtc_id_seq', 704, true);
          public          postgres    false    210                       0    0    ethbtc_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ethbtc_id_seq', 2420, true);
          public          postgres    false    211                       0    0    ltcbtc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ltcbtc_id_seq', 449, true);
          public          postgres    false    217                       0    0    xrpbtc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.xrpbtc_id_seq', 457, true);
          public          postgres    false    213            w           2606    16418    bchbtc bchbtc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bchbtc
    ADD CONSTRAINT bchbtc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bchbtc DROP CONSTRAINT bchbtc_pkey;
       public            postgres    false    216            q           2606    16399    bnbbtc bnbbtc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bnbbtc
    ADD CONSTRAINT bnbbtc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bnbbtc DROP CONSTRAINT bnbbtc_pkey;
       public            postgres    false    209            s           2606    16406    ethbtc ethbtc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ethbtc
    ADD CONSTRAINT ethbtc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ethbtc DROP CONSTRAINT ethbtc_pkey;
       public            postgres    false    212            y           2606    16424    ltcbtc ltcbtc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ltcbtc
    ADD CONSTRAINT ltcbtc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ltcbtc DROP CONSTRAINT ltcbtc_pkey;
       public            postgres    false    218            u           2606    16412    xrpbtc xrpbtc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.xrpbtc
    ADD CONSTRAINT xrpbtc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.xrpbtc DROP CONSTRAINT xrpbtc_pkey;
       public            postgres    false    214               H   x�Uϻ�@�ׂ�}�s��� q�f/���Mw��L<�-N��_��F�$�2�"'�H(����'�         M   x�U���0�7��M�����DXb��K8���X6f�cS��9����n3���Z�ov��ώZ����b�(d         W   x�]���@Dѳ�b��"�����H���D,�D��]��{z�?~3���i^mM�߽���g��H�>�>��>���ED/�{+6         T   x�U�[
�0D�ﺖRL|D�����a�?:pU��yFfR��0��N0��VG��YTP:�?[�wVU:�W-�T����!�A=(.      
   }   x�U�AC!E�q]K� �P��������N0zC�|�������gY3ȼ�MqZ|j]��&.�a��[���VI�[�j/�*XLV�$e`9�]��"���<���I:�*=��)�UZό�g���ga$     