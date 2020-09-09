PGDMP          7         	        x           STP_CDMX     12.4 (Ubuntu 12.4-1.pgdg20.04+1)     12.4 (Ubuntu 12.4-1.pgdg20.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    STP_CDMX    DATABASE     |   CREATE DATABASE "STP_CDMX" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "STP_CDMX";
                postgres    false            �            1259    24823    autobus    TABLE     �   CREATE TABLE public.autobus (
    id_vehiculo integer NOT NULL,
    id_ruta integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.autobus;
       public         heap    postgres    false            �            1259    24600    debito/credito    TABLE     �   CREATE TABLE public."debito/credito" (
    numpago integer NOT NULL,
    id_usuario integer NOT NULL,
    numero_tarjeta bigint,
    codigo bigint,
    fecha_vencimiento date,
    fecha_pago date,
    cantidad_pago integer
);
 $   DROP TABLE public."debito/credito";
       public         heap    postgres    false            �            1259    24598    debito/credito_id_usuario_seq    SEQUENCE     �   ALTER TABLE public."debito/credito" ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."debito/credito_id_usuario_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    24758    especialidad    TABLE     r   CREATE TABLE public.especialidad (
    especialidad character varying NOT NULL,
    id_taller integer NOT NULL
);
     DROP TABLE public.especialidad;
       public         heap    postgres    false            �            1259    24704    estacion    TABLE     �   CREATE TABLE public.estacion (
    id_estacion integer NOT NULL,
    nombre character varying NOT NULL,
    hora_inicio character varying NOT NULL,
    hora_final character varying NOT NULL
);
    DROP TABLE public.estacion;
       public         heap    postgres    false            �            1259    24636    examen_medico    TABLE     n  CREATE TABLE public.examen_medico (
    id_operador integer NOT NULL,
    cedula_medico character varying NOT NULL,
    peso character varying NOT NULL,
    presion character varying NOT NULL,
    talla character varying NOT NULL,
    status character varying NOT NULL,
    fecha date NOT NULL,
    hora character varying NOT NULL,
    id_examen integer NOT NULL
);
 !   DROP TABLE public.examen_medico;
       public         heap    postgres    false            �            1259    24649    licencia    TABLE     �   CREATE TABLE public.licencia (
    id_licencia integer NOT NULL,
    id_operador integer NOT NULL,
    fecha_vencimiento date NOT NULL,
    fecha_expedicion date NOT NULL,
    tipo character varying NOT NULL
);
    DROP TABLE public.licencia;
       public         heap    postgres    false            �            1259    24715    linea    TABLE     �   CREATE TABLE public.linea (
    id_linea integer NOT NULL,
    ubicacion_inicio character varying NOT NULL,
    ubicacion_final character varying NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.linea;
       public         heap    postgres    false            �            1259    24936    manejar    TABLE     �   CREATE TABLE public.manejar (
    id_manejo integer NOT NULL,
    id_vehiculo integer NOT NULL,
    id_operador integer NOT NULL,
    fecha date NOT NULL,
    hora_inicio character varying NOT NULL,
    hora_final character varying NOT NULL
);
    DROP TABLE public.manejar;
       public         heap    postgres    false            �            1259    24779    metro    TABLE     �   CREATE TABLE public.metro (
    id_vehiculo integer NOT NULL,
    id_linea integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.metro;
       public         heap    postgres    false            �            1259    24797    metrobus    TABLE     �   CREATE TABLE public.metrobus (
    id_vehiculo integer NOT NULL,
    id_linea integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.metrobus;
       public         heap    postgres    false            �            1259    24810    microbus    TABLE     �   CREATE TABLE public.microbus (
    id_vehiculo integer NOT NULL,
    id_ruta integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    ipo_combustible character varying NOT NULL
);
    DROP TABLE public.microbus;
       public         heap    postgres    false            �            1259    24585    operador    TABLE       CREATE TABLE public.operador (
    id_operador integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    genero character varying NOT NULL,
    estudios character varying NOT NULL,
    direccion character varying NOT NULL
);
    DROP TABLE public.operador;
       public         heap    postgres    false            �            1259    24610    paypal    TABLE     �   CREATE TABLE public.paypal (
    numpago integer NOT NULL,
    id_usuario integer NOT NULL,
    usuario_paypal character varying,
    fecha_pago character varying,
    cantidad_pago character varying
);
    DROP TABLE public.paypal;
       public         heap    postgres    false            �            1259    24723    pertenece_linea    TABLE     �   CREATE TABLE public.pertenece_linea (
    id_linea integer NOT NULL,
    id_estacion integer NOT NULL,
    disponible boolean NOT NULL,
    fecha_estimada date NOT NULL
);
 #   DROP TABLE public.pertenece_linea;
       public         heap    postgres    false            �            1259    24736    pertenece_ruta    TABLE     �   CREATE TABLE public.pertenece_ruta (
    id_ruta integer NOT NULL,
    id_estacion integer NOT NULL,
    disponible boolean NOT NULL,
    fecha_estimada date NOT NULL
);
 "   DROP TABLE public.pertenece_ruta;
       public         heap    postgres    false            �            1259    24883    reparar    TABLE     �   CREATE TABLE public.reparar (
    id_reparacion integer NOT NULL,
    id_vehiculo integer NOT NULL,
    id_taller integer NOT NULL,
    fecha_estimada date NOT NULL,
    fecha_ingreso date NOT NULL,
    razon character varying NOT NULL
);
    DROP TABLE public.reparar;
       public         heap    postgres    false            �            1259    24836    rtp    TABLE     �   CREATE TABLE public.rtp (
    id_vehiculo integer NOT NULL,
    id_ruta integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.rtp;
       public         heap    postgres    false            �            1259    24696    ruta    TABLE       CREATE TABLE public.ruta (
    id_ruta integer NOT NULL,
    numero_ruta character varying NOT NULL,
    nombre character varying NOT NULL,
    distancia character varying NOT NULL,
    direccion_inicio character varying NOT NULL,
    direccion_final character varying NOT NULL
);
    DROP TABLE public.ruta;
       public         heap    postgres    false            �            1259    24862    sitio    TABLE     �   CREATE TABLE public.sitio (
    id_sitio integer NOT NULL,
    nombre character varying NOT NULL,
    direccion character varying NOT NULL,
    telefono character varying NOT NULL
);
    DROP TABLE public.sitio;
       public         heap    postgres    false            �            1259    24750    taller    TABLE     i   CREATE TABLE public.taller (
    id_taller integer NOT NULL,
    direccion character varying NOT NULL
);
    DROP TABLE public.taller;
       public         heap    postgres    false            �            1259    24870    taxi    TABLE     �   CREATE TABLE public.taxi (
    id_vehiculo integer NOT NULL,
    id_sitio integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.taxi;
       public         heap    postgres    false            �            1259    24623    telefono    TABLE     l   CREATE TABLE public.telefono (
    telefono character varying NOT NULL,
    id_operador integer NOT NULL
);
    DROP TABLE public.telefono;
       public         heap    postgres    false            �            1259    24771    tren_ligero    TABLE     �   CREATE TABLE public.tren_ligero (
    id_vehiculo integer NOT NULL,
    id_linea integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.tren_ligero;
       public         heap    postgres    false            �            1259    24849    trolebus    TABLE     �   CREATE TABLE public.trolebus (
    id_vehiculo integer NOT NULL,
    id_ruta integer NOT NULL,
    fecha_inicio date NOT NULL,
    capacidad_pasajeros integer NOT NULL,
    tipo_combustible character varying NOT NULL
);
    DROP TABLE public.trolebus;
       public         heap    postgres    false            �            1259    24577    usuario    TABLE     G  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    username character varying NOT NULL,
    "contraseña" character varying NOT NULL,
    email character varying NOT NULL,
    nombre character varying NOT NULL,
    apellido_paterno character varying NOT NULL,
    apellido_materno character varying NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    24989    utilizar    TABLE     �   CREATE TABLE public.utilizar (
    id_viaje integer NOT NULL,
    id_vehiculo integer NOT NULL,
    id_usuario integer NOT NULL,
    hora character varying NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.utilizar;
       public         heap    postgres    false            z          0    24823    autobus 
   TABLE DATA           l   COPY public.autobus (id_vehiculo, id_ruta, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    221   �       j          0    24600    debito/credito 
   TABLE DATA           �   COPY public."debito/credito" (numpago, id_usuario, numero_tarjeta, codigo, fecha_vencimiento, fecha_pago, cantidad_pago) FROM stdin;
    public          postgres    false    205   �       u          0    24758    especialidad 
   TABLE DATA           ?   COPY public.especialidad (especialidad, id_taller) FROM stdin;
    public          postgres    false    216   �       p          0    24704    estacion 
   TABLE DATA           P   COPY public.estacion (id_estacion, nombre, hora_inicio, hora_final) FROM stdin;
    public          postgres    false    211   ;�       m          0    24636    examen_medico 
   TABLE DATA           y   COPY public.examen_medico (id_operador, cedula_medico, peso, presion, talla, status, fecha, hora, id_examen) FROM stdin;
    public          postgres    false    208   X�       n          0    24649    licencia 
   TABLE DATA           g   COPY public.licencia (id_licencia, id_operador, fecha_vencimiento, fecha_expedicion, tipo) FROM stdin;
    public          postgres    false    209   u�       q          0    24715    linea 
   TABLE DATA           T   COPY public.linea (id_linea, ubicacion_inicio, ubicacion_final, nombre) FROM stdin;
    public          postgres    false    212   ��       �          0    24936    manejar 
   TABLE DATA           f   COPY public.manejar (id_manejo, id_vehiculo, id_operador, fecha, hora_inicio, hora_final) FROM stdin;
    public          postgres    false    227   ��       w          0    24779    metro 
   TABLE DATA           k   COPY public.metro (id_vehiculo, id_linea, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    218   ̦       x          0    24797    metrobus 
   TABLE DATA           n   COPY public.metrobus (id_vehiculo, id_linea, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    219   �       y          0    24810    microbus 
   TABLE DATA           l   COPY public.microbus (id_vehiculo, id_ruta, fecha_inicio, capacidad_pasajeros, ipo_combustible) FROM stdin;
    public          postgres    false    220   �       h          0    24585    operador 
   TABLE DATA           j   COPY public.operador (id_operador, id_usuario, fecha_nacimiento, genero, estudios, direccion) FROM stdin;
    public          postgres    false    203   #�       k          0    24610    paypal 
   TABLE DATA           `   COPY public.paypal (numpago, id_usuario, usuario_paypal, fecha_pago, cantidad_pago) FROM stdin;
    public          postgres    false    206   @�       r          0    24723    pertenece_linea 
   TABLE DATA           \   COPY public.pertenece_linea (id_linea, id_estacion, disponible, fecha_estimada) FROM stdin;
    public          postgres    false    213   ]�       s          0    24736    pertenece_ruta 
   TABLE DATA           Z   COPY public.pertenece_ruta (id_ruta, id_estacion, disponible, fecha_estimada) FROM stdin;
    public          postgres    false    214   z�                 0    24883    reparar 
   TABLE DATA           n   COPY public.reparar (id_reparacion, id_vehiculo, id_taller, fecha_estimada, fecha_ingreso, razon) FROM stdin;
    public          postgres    false    226   ��       {          0    24836    rtp 
   TABLE DATA           h   COPY public.rtp (id_vehiculo, id_ruta, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    222   ��       o          0    24696    ruta 
   TABLE DATA           j   COPY public.ruta (id_ruta, numero_ruta, nombre, distancia, direccion_inicio, direccion_final) FROM stdin;
    public          postgres    false    210   ѧ       }          0    24862    sitio 
   TABLE DATA           F   COPY public.sitio (id_sitio, nombre, direccion, telefono) FROM stdin;
    public          postgres    false    224   �       t          0    24750    taller 
   TABLE DATA           6   COPY public.taller (id_taller, direccion) FROM stdin;
    public          postgres    false    215   �       ~          0    24870    taxi 
   TABLE DATA           j   COPY public.taxi (id_vehiculo, id_sitio, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    225   (�       l          0    24623    telefono 
   TABLE DATA           9   COPY public.telefono (telefono, id_operador) FROM stdin;
    public          postgres    false    207   E�       v          0    24771    tren_ligero 
   TABLE DATA           q   COPY public.tren_ligero (id_vehiculo, id_linea, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    217   b�       |          0    24849    trolebus 
   TABLE DATA           m   COPY public.trolebus (id_vehiculo, id_ruta, fecha_inicio, capacidad_pasajeros, tipo_combustible) FROM stdin;
    public          postgres    false    223   �       g          0    24577    usuario 
   TABLE DATA           y   COPY public.usuario (id_usuario, username, "contraseña", email, nombre, apellido_paterno, apellido_materno) FROM stdin;
    public          postgres    false    202   ��       �          0    24989    utilizar 
   TABLE DATA           R   COPY public.utilizar (id_viaje, id_vehiculo, id_usuario, hora, fecha) FROM stdin;
    public          postgres    false    228   ��       �           0    0    debito/credito_id_usuario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."debito/credito_id_usuario_seq"', 1, false);
          public          postgres    false    204            �           2606    24830    autobus autobus_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.autobus
    ADD CONSTRAINT autobus_pkey PRIMARY KEY (id_vehiculo);
 >   ALTER TABLE ONLY public.autobus DROP CONSTRAINT autobus_pkey;
       public            postgres    false    221            �           2606    24604 "   debito/credito debito/credito_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."debito/credito"
    ADD CONSTRAINT "debito/credito_pkey" PRIMARY KEY (numpago);
 P   ALTER TABLE ONLY public."debito/credito" DROP CONSTRAINT "debito/credito_pkey";
       public            postgres    false    205            �           2606    24765    especialidad especialidad_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (especialidad, id_taller);
 H   ALTER TABLE ONLY public.especialidad DROP CONSTRAINT especialidad_pkey;
       public            postgres    false    216    216            �           2606    24711    estacion estacion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.estacion
    ADD CONSTRAINT estacion_pkey PRIMARY KEY (id_estacion);
 @   ALTER TABLE ONLY public.estacion DROP CONSTRAINT estacion_pkey;
       public            postgres    false    211            �           2606    24643     examen_medico examen_medico_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.examen_medico
    ADD CONSTRAINT examen_medico_pkey PRIMARY KEY (id_examen);
 J   ALTER TABLE ONLY public.examen_medico DROP CONSTRAINT examen_medico_pkey;
       public            postgres    false    208            �           2606    24656    licencia licencia_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.licencia
    ADD CONSTRAINT licencia_pkey PRIMARY KEY (id_licencia);
 @   ALTER TABLE ONLY public.licencia DROP CONSTRAINT licencia_pkey;
       public            postgres    false    209            �           2606    24722    linea linea_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.linea
    ADD CONSTRAINT linea_pkey PRIMARY KEY (id_linea);
 :   ALTER TABLE ONLY public.linea DROP CONSTRAINT linea_pkey;
       public            postgres    false    212            �           2606    24943    manejar manejar_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT manejar_pkey PRIMARY KEY (id_manejo);
 >   ALTER TABLE ONLY public.manejar DROP CONSTRAINT manejar_pkey;
       public            postgres    false    227            �           2606    24786    metro metro_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.metro
    ADD CONSTRAINT metro_pkey PRIMARY KEY (id_vehiculo);
 :   ALTER TABLE ONLY public.metro DROP CONSTRAINT metro_pkey;
       public            postgres    false    218            �           2606    24804    metrobus metrobus_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.metrobus
    ADD CONSTRAINT metrobus_pkey PRIMARY KEY (id_vehiculo);
 @   ALTER TABLE ONLY public.metrobus DROP CONSTRAINT metrobus_pkey;
       public            postgres    false    219            �           2606    24817    microbus microbus_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.microbus
    ADD CONSTRAINT microbus_pkey PRIMARY KEY (id_vehiculo);
 @   ALTER TABLE ONLY public.microbus DROP CONSTRAINT microbus_pkey;
       public            postgres    false    220            �           2606    24592    operador operador_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.operador
    ADD CONSTRAINT operador_pkey PRIMARY KEY (id_operador);
 @   ALTER TABLE ONLY public.operador DROP CONSTRAINT operador_pkey;
       public            postgres    false    203            �           2606    24617    paypal pknumpago 
   CONSTRAINT     S   ALTER TABLE ONLY public.paypal
    ADD CONSTRAINT pknumpago PRIMARY KEY (numpago);
 :   ALTER TABLE ONLY public.paypal DROP CONSTRAINT pknumpago;
       public            postgres    false    206            �           2606    24890    reparar reparar_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT reparar_pkey PRIMARY KEY (id_reparacion);
 >   ALTER TABLE ONLY public.reparar DROP CONSTRAINT reparar_pkey;
       public            postgres    false    226            �           2606    24843    rtp rtp_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.rtp
    ADD CONSTRAINT rtp_pkey PRIMARY KEY (id_vehiculo);
 6   ALTER TABLE ONLY public.rtp DROP CONSTRAINT rtp_pkey;
       public            postgres    false    222            �           2606    24703    ruta ruta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ruta
    ADD CONSTRAINT ruta_pkey PRIMARY KEY (id_ruta);
 8   ALTER TABLE ONLY public.ruta DROP CONSTRAINT ruta_pkey;
       public            postgres    false    210            �           2606    24869    sitio sitio_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sitio
    ADD CONSTRAINT sitio_pkey PRIMARY KEY (id_sitio);
 :   ALTER TABLE ONLY public.sitio DROP CONSTRAINT sitio_pkey;
       public            postgres    false    224            �           2606    24757    taller taller_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.taller
    ADD CONSTRAINT taller_pkey PRIMARY KEY (id_taller);
 <   ALTER TABLE ONLY public.taller DROP CONSTRAINT taller_pkey;
       public            postgres    false    215            �           2606    24877    taxi taxi_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.taxi
    ADD CONSTRAINT taxi_pkey PRIMARY KEY (id_vehiculo);
 8   ALTER TABLE ONLY public.taxi DROP CONSTRAINT taxi_pkey;
       public            postgres    false    225            �           2606    24630    telefono telefono_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_pkey PRIMARY KEY (telefono, id_operador);
 @   ALTER TABLE ONLY public.telefono DROP CONSTRAINT telefono_pkey;
       public            postgres    false    207    207            �           2606    24778    tren_ligero tren_ligero_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tren_ligero
    ADD CONSTRAINT tren_ligero_pkey PRIMARY KEY (id_vehiculo);
 F   ALTER TABLE ONLY public.tren_ligero DROP CONSTRAINT tren_ligero_pkey;
       public            postgres    false    217            �           2606    24856    trolebus trolebus_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.trolebus
    ADD CONSTRAINT trolebus_pkey PRIMARY KEY (id_vehiculo);
 @   ALTER TABLE ONLY public.trolebus DROP CONSTRAINT trolebus_pkey;
       public            postgres    false    223            �           2606    24584    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    202            �           2606    24996    utilizar utilizar_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT utilizar_pkey PRIMARY KEY (id_viaje);
 @   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT utilizar_pkey;
       public            postgres    false    228            �           2606    24731    pertenece_linea fkid_estacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.pertenece_linea
    ADD CONSTRAINT fkid_estacion FOREIGN KEY (id_estacion) REFERENCES public.estacion(id_estacion);
 G   ALTER TABLE ONLY public.pertenece_linea DROP CONSTRAINT fkid_estacion;
       public          postgres    false    213    2972    211            �           2606    24744    pertenece_ruta fkid_estacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.pertenece_ruta
    ADD CONSTRAINT fkid_estacion FOREIGN KEY (id_estacion) REFERENCES public.estacion(id_estacion);
 F   ALTER TABLE ONLY public.pertenece_ruta DROP CONSTRAINT fkid_estacion;
       public          postgres    false    214    2972    211            �           2606    24726    pertenece_linea fkid_linea    FK CONSTRAINT     �   ALTER TABLE ONLY public.pertenece_linea
    ADD CONSTRAINT fkid_linea FOREIGN KEY (id_linea) REFERENCES public.linea(id_linea);
 D   ALTER TABLE ONLY public.pertenece_linea DROP CONSTRAINT fkid_linea;
       public          postgres    false    213    2974    212            �           2606    24787    metro fkid_linea    FK CONSTRAINT     v   ALTER TABLE ONLY public.metro
    ADD CONSTRAINT fkid_linea FOREIGN KEY (id_linea) REFERENCES public.linea(id_linea);
 :   ALTER TABLE ONLY public.metro DROP CONSTRAINT fkid_linea;
       public          postgres    false    2974    218    212            �           2606    24792    tren_ligero fkid_linea    FK CONSTRAINT     �   ALTER TABLE ONLY public.tren_ligero
    ADD CONSTRAINT fkid_linea FOREIGN KEY (id_linea) REFERENCES public.linea(id_linea) NOT VALID;
 @   ALTER TABLE ONLY public.tren_ligero DROP CONSTRAINT fkid_linea;
       public          postgres    false    217    2974    212            �           2606    24805    metrobus fkid_linea    FK CONSTRAINT     y   ALTER TABLE ONLY public.metrobus
    ADD CONSTRAINT fkid_linea FOREIGN KEY (id_linea) REFERENCES public.linea(id_linea);
 =   ALTER TABLE ONLY public.metrobus DROP CONSTRAINT fkid_linea;
       public          postgres    false    212    219    2974            �           2606    24644    examen_medico fkid_operador    FK CONSTRAINT     �   ALTER TABLE ONLY public.examen_medico
    ADD CONSTRAINT fkid_operador FOREIGN KEY (id_operador) REFERENCES public.operador(id_operador);
 E   ALTER TABLE ONLY public.examen_medico DROP CONSTRAINT fkid_operador;
       public          postgres    false    2958    203    208            �           2606    24657    licencia fkid_operador    FK CONSTRAINT     �   ALTER TABLE ONLY public.licencia
    ADD CONSTRAINT fkid_operador FOREIGN KEY (id_operador) REFERENCES public.operador(id_operador);
 @   ALTER TABLE ONLY public.licencia DROP CONSTRAINT fkid_operador;
       public          postgres    false    2958    209    203            �           2606    24944    manejar fkid_operador    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkid_operador FOREIGN KEY (id_operador) REFERENCES public.operador(id_operador);
 ?   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkid_operador;
       public          postgres    false    227    2958    203            �           2606    24739    pertenece_ruta fkid_ruta    FK CONSTRAINT     {   ALTER TABLE ONLY public.pertenece_ruta
    ADD CONSTRAINT fkid_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id_ruta);
 B   ALTER TABLE ONLY public.pertenece_ruta DROP CONSTRAINT fkid_ruta;
       public          postgres    false    214    2970    210            �           2606    24818    microbus fkid_ruta    FK CONSTRAINT     u   ALTER TABLE ONLY public.microbus
    ADD CONSTRAINT fkid_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id_ruta);
 <   ALTER TABLE ONLY public.microbus DROP CONSTRAINT fkid_ruta;
       public          postgres    false    2970    210    220            �           2606    24831    autobus fkid_ruta    FK CONSTRAINT     t   ALTER TABLE ONLY public.autobus
    ADD CONSTRAINT fkid_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id_ruta);
 ;   ALTER TABLE ONLY public.autobus DROP CONSTRAINT fkid_ruta;
       public          postgres    false    2970    221    210            �           2606    24844    rtp fkid_ruta    FK CONSTRAINT     p   ALTER TABLE ONLY public.rtp
    ADD CONSTRAINT fkid_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id_ruta);
 7   ALTER TABLE ONLY public.rtp DROP CONSTRAINT fkid_ruta;
       public          postgres    false    210    2970    222            �           2606    24857    trolebus fkid_ruta    FK CONSTRAINT     u   ALTER TABLE ONLY public.trolebus
    ADD CONSTRAINT fkid_ruta FOREIGN KEY (id_ruta) REFERENCES public.ruta(id_ruta);
 <   ALTER TABLE ONLY public.trolebus DROP CONSTRAINT fkid_ruta;
       public          postgres    false    2970    223    210            �           2606    24878    taxi fkid_sitio    FK CONSTRAINT     u   ALTER TABLE ONLY public.taxi
    ADD CONSTRAINT fkid_sitio FOREIGN KEY (id_sitio) REFERENCES public.sitio(id_sitio);
 9   ALTER TABLE ONLY public.taxi DROP CONSTRAINT fkid_sitio;
       public          postgres    false    225    2994    224            �           2606    24891    reparar fkid_taller    FK CONSTRAINT     |   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkid_taller FOREIGN KEY (id_taller) REFERENCES public.taller(id_taller);
 =   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkid_taller;
       public          postgres    false    215    2976    226            �           2606    24605    debito/credito fkid_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."debito/credito"
    ADD CONSTRAINT fkid_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 G   ALTER TABLE ONLY public."debito/credito" DROP CONSTRAINT fkid_usuario;
       public          postgres    false    202    205    2956            �           2606    24618    paypal fkid_usuario    FK CONSTRAINT        ALTER TABLE ONLY public.paypal
    ADD CONSTRAINT fkid_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 =   ALTER TABLE ONLY public.paypal DROP CONSTRAINT fkid_usuario;
       public          postgres    false    2956    206    202            �           2606    24997    utilizar fkid_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkid_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 ?   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkid_usuario;
       public          postgres    false    2956    228    202            �           2606    24896    reparar fkis_vehiculo_autobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_autobus FOREIGN KEY (id_vehiculo) REFERENCES public.autobus(id_vehiculo);
 G   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_autobus;
       public          postgres    false    221    2988    226            �           2606    24949    manejar fkis_vehiculo_autobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_autobus FOREIGN KEY (id_vehiculo) REFERENCES public.autobus(id_vehiculo);
 G   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_autobus;
       public          postgres    false    221    2988    227            �           2606    25002    utilizar fkis_vehiculo_autobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_autobus FOREIGN KEY (id_vehiculo) REFERENCES public.autobus(id_vehiculo);
 H   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_autobus;
       public          postgres    false    2988    221    228            �           2606    24906    reparar fkis_vehiculo_metro    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_metro FOREIGN KEY (id_vehiculo) REFERENCES public.metro(id_vehiculo);
 E   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_metro;
       public          postgres    false    2982    226    218            �           2606    24954    manejar fkis_vehiculo_metro    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_metro FOREIGN KEY (id_vehiculo) REFERENCES public.metro(id_vehiculo);
 E   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_metro;
       public          postgres    false    218    227    2982            �           2606    25007    utilizar fkis_vehiculo_metro    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_metro FOREIGN KEY (id_vehiculo) REFERENCES public.metro(id_vehiculo);
 F   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_metro;
       public          postgres    false    228    2982    218            �           2606    24911    reparar fkis_vehiculo_metrobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_metrobus FOREIGN KEY (id_vehiculo) REFERENCES public.metrobus(id_vehiculo);
 H   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_metrobus;
       public          postgres    false    226    219    2984            �           2606    24959    manejar fkis_vehiculo_metrobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_metrobus FOREIGN KEY (id_vehiculo) REFERENCES public.metrobus(id_vehiculo);
 H   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_metrobus;
       public          postgres    false    227    2984    219            �           2606    25012    utilizar fkis_vehiculo_metrobus    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_metrobus FOREIGN KEY (id_vehiculo) REFERENCES public.metrobus(id_vehiculo);
 I   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_metrobus;
       public          postgres    false    219    228    2984            �           2606    24916    reparar fkis_vehiculo_microbus    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_microbus FOREIGN KEY (id_vehiculo) REFERENCES public.microbus(id_vehiculo);
 H   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_microbus;
       public          postgres    false    2986    226    220            �           2606    24964    manejar fkis_vehiculo_microbus    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_microbus FOREIGN KEY (id_vehiculo) REFERENCES public.microbus(id_vehiculo);
 H   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_microbus;
       public          postgres    false    220    227    2986            �           2606    25017    utilizar fkis_vehiculo_microbus    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_microbus FOREIGN KEY (id_vehiculo) REFERENCES public.microbus(id_vehiculo);
 I   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_microbus;
       public          postgres    false    228    220    2986            �           2606    24921    reparar fkis_vehiculo_rtp    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_rtp FOREIGN KEY (id_vehiculo) REFERENCES public.rtp(id_vehiculo);
 C   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_rtp;
       public          postgres    false    2990    222    226            �           2606    24969    manejar fkis_vehiculo_rtp    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_rtp FOREIGN KEY (id_vehiculo) REFERENCES public.rtp(id_vehiculo);
 C   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_rtp;
       public          postgres    false    222    2990    227            �           2606    25022    utilizar fkis_vehiculo_rtp    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_rtp FOREIGN KEY (id_vehiculo) REFERENCES public.rtp(id_vehiculo);
 D   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_rtp;
       public          postgres    false    222    2990    228            �           2606    24931    reparar fkis_vehiculo_taxi    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_taxi FOREIGN KEY (id_vehiculo) REFERENCES public.taxi(id_vehiculo);
 D   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_taxi;
       public          postgres    false    226    2996    225            �           2606    24974    manejar fkis_vehiculo_taxi    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_taxi FOREIGN KEY (id_vehiculo) REFERENCES public.taxi(id_vehiculo);
 D   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_taxi;
       public          postgres    false    225    2996    227            �           2606    25027    utilizar fkis_vehiculo_taxi    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_taxi FOREIGN KEY (id_vehiculo) REFERENCES public.taxi(id_vehiculo);
 E   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_taxi;
       public          postgres    false    2996    225    228            �           2606    24901 !   reparar fkis_vehiculo_tren_ligero    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_tren_ligero FOREIGN KEY (id_vehiculo) REFERENCES public.tren_ligero(id_vehiculo);
 K   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_tren_ligero;
       public          postgres    false    226    217    2980            �           2606    24979 !   manejar fkis_vehiculo_tren_ligero    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_tren_ligero FOREIGN KEY (id_vehiculo) REFERENCES public.tren_ligero(id_vehiculo);
 K   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_tren_ligero;
       public          postgres    false    2980    227    217            �           2606    25032 "   utilizar fkis_vehiculo_tren_ligero    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_tren_ligero FOREIGN KEY (id_vehiculo) REFERENCES public.tren_ligero(id_vehiculo);
 L   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_tren_ligero;
       public          postgres    false    2980    217    228            �           2606    24926    reparar fkis_vehiculo_trolebus    FK CONSTRAINT     �   ALTER TABLE ONLY public.reparar
    ADD CONSTRAINT fkis_vehiculo_trolebus FOREIGN KEY (id_vehiculo) REFERENCES public.trolebus(id_vehiculo);
 H   ALTER TABLE ONLY public.reparar DROP CONSTRAINT fkis_vehiculo_trolebus;
       public          postgres    false    223    2992    226            �           2606    24984    manejar fkis_vehiculo_trolebus    FK CONSTRAINT     �   ALTER TABLE ONLY public.manejar
    ADD CONSTRAINT fkis_vehiculo_trolebus FOREIGN KEY (id_vehiculo) REFERENCES public.trolebus(id_vehiculo);
 H   ALTER TABLE ONLY public.manejar DROP CONSTRAINT fkis_vehiculo_trolebus;
       public          postgres    false    223    227    2992            �           2606    25037    utilizar fkis_vehiculo_trolebus    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT fkis_vehiculo_trolebus FOREIGN KEY (id_vehiculo) REFERENCES public.trolebus(id_vehiculo);
 I   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT fkis_vehiculo_trolebus;
       public          postgres    false    2992    223    228            �           2606    24631    telefono pkid_operador    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT pkid_operador FOREIGN KEY (id_operador) REFERENCES public.operador(id_operador);
 @   ALTER TABLE ONLY public.telefono DROP CONSTRAINT pkid_operador;
       public          postgres    false    207    2958    203            �           2606    24766    especialidad pkid_taller    FK CONSTRAINT     �   ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT pkid_taller FOREIGN KEY (id_taller) REFERENCES public.taller(id_taller);
 B   ALTER TABLE ONLY public.especialidad DROP CONSTRAINT pkid_taller;
       public          postgres    false    215    216    2976            �           2606    24593    operador usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operador
    ADD CONSTRAINT usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;
 ?   ALTER TABLE ONLY public.operador DROP CONSTRAINT usuario_fkey;
       public          postgres    false    2956    202    203            z      x������ � �      j      x������ � �      u      x������ � �      p      x������ � �      m      x������ � �      n      x������ � �      q      x������ � �      �      x������ � �      w      x������ � �      x      x������ � �      y      x������ � �      h      x������ � �      k      x������ � �      r      x������ � �      s      x������ � �            x������ � �      {      x������ � �      o      x������ � �      }      x������ � �      t      x������ � �      ~      x������ � �      l      x������ � �      v      x������ � �      |      x������ � �      g      x������ � �      �      x������ � �     