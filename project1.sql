PGDMP  1                    {            project1    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16610    project1    DATABASE     j   CREATE DATABASE project1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE project1;
                postgres    false            �            1259    16633    book    TABLE     6  CREATE TABLE public.book (
    id integer NOT NULL,
    person_id integer,
    title character varying(300) NOT NULL,
    author character varying(200) NOT NULL,
    date date NOT NULL,
    assign_timestamp timestamp without time zone DEFAULT '2023-12-01 00:52:21.692'::timestamp without time zone NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16632    book_id_seq    SEQUENCE     �   ALTER TABLE public.book ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16612    person    TABLE     u   CREATE TABLE public.person (
    id integer NOT NULL,
    fio character varying(200) NOT NULL,
    birthdate date
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16611    person_id_seq    SEQUENCE     �   ALTER TABLE public.person ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �          0    16633    book 
   TABLE DATA           T   COPY public.book (id, person_id, title, author, date, assign_timestamp) FROM stdin;
    public          postgres    false    218   �       �          0    16612    person 
   TABLE DATA           4   COPY public.person (id, fio, birthdate) FROM stdin;
    public          postgres    false    216   �       �           0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 98, true);
          public          postgres    false    217            �           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    215            %           2606    16639    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    218            !           2606    16618    person person_fio_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_fio_key UNIQUE (fio);
 ?   ALTER TABLE ONLY public.person DROP CONSTRAINT person_fio_key;
       public            postgres    false    216            #           2606    16616    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    216            &           2606    16645    book book_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE SET NULL;
 B   ALTER TABLE ONLY public.book DROP CONSTRAINT book_person_id_fkey;
       public          postgres    false    218    4643    216            �     x��X]O�H}6��Fݫ�m��c��@��4hV��T�"�M�Ŗ�0��������c{n�$h'Z�C$�é{�=���}��K���h�fK������;��5��A*%� K�^���0��>����g�z�wlx]����Z���iw�ˆ\�z� O��ss�E>�=?���$L�8��GD�dK^��a��Ea�m �y�]�GB^���~�;�b�'�1��w�K9)�wn���K��3����.8���A�������F��5�� ����+#�kѴƈ�ι��X=C��|B���Yu���u!�n�bG�Ԣ�ޗ����J5�~�	*���۸�O�GUŽO�l�m,�,"F]�4qS�NJW�s����;Q�ip�GٰCn�V
��������(��ݤ����s� ������1K��?���pSH�.��O+��Y����+�f�x�m]�#^L	�R[#z^	�gYXm����E�r���� d��5
S����n<���4@���Vf���7�E�+��^[�3s3th�<4�Wm-��5D?�ce��.��LIai�d�(�l��gF�"x3�I���OF�A[�������gn��sJ�C-T�i��-8���ے�v� vgj&�rm��m�fq ؕ�wm=��˙��d��,���R�<qƆ�PNY���_�|���3AX3ZnԌW����W�h�p�r�� �� ��y|��[�M�QŁ�)wf�6녝�������/����׺��(a�&r��d��X�=l�l ���*ۈ椻?���UR���k��I��4�A�	�:,��:"X�9
���i�OϩԲ�sSy'B��`_�̩<Y/�wrq����w�|�����}|�����w?|��7��X��q/�ގ��'ڲ��[n�k�;�Eg�B�a��oX��-F�����X��t�5�"î��u���x�Q�Ss.��	6��ޅ��\*vЪ	��2�����G�	������*p��t���q��d���;�#t�N���h�3��]肖�H����l�k['�x�2��z<����3�*�%��x����i���v,�����+�:��I�\��a]�N�:j%1�;g8v��УY�䭌���f�K���m�dx��ZI�bS<"��B���wEHr	p;���^�:���j�^��($�n��W+R>Hp>ԕ����N/��C3p�����4��,2���N�$+b1Y��&v�/�zk��n#uv)	��
® �1�l�pn�5���Z�|���[XH�T��dk\hh#���g���M�H�e�q�&����)#��xN�ËV�"˝P7�n)��1�	m>І�1!k��;�"�C7l�{%Y*	coW��򾣋h���}vÕ���#!��7�E�Y����mK�@��SA����
��sʣ�oǌ�昑:���{��m��1n����X���k1i-�QN%�:E�.��5v�ݽ.�;rwK���9Sҵ�[y��>�eA��&�;��<Es��m�m�� MW��aF-����P���C�7
mA��-�.]�{X�2,��P{�����O��-5*���t7��yu�L��Hbk��d�yA��<t�5�D��3�8	�)g�~��"�
d<Ej3�f�R�F�C���Z�z����^��.�����v�^���y��3y!�o>�v���ӝzu�\H�(��
��<
1�V�+!wO_�&��~3�V�������@�']��^<�8\���ۯ�~������T8      �   o   x�3��,K��/S Q
vfr������!qsg��� i(���R��@�Ȉˈ3 ��D)@�@%F st���˔3,�$1'�R�?=�()�"i`�kd����� ��(
     