PGDMP         ;                |            Banka    15.6    15.6 $    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    29294    Banka    DATABASE     |   CREATE DATABASE "Banka" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE "Banka";
                postgres    false            �            1259    29316    Adresler    TABLE     n   CREATE TABLE public."Adresler" (
    id integer NOT NULL,
    "MusteriId" integer,
    "AdresDetay" "char"
);
    DROP TABLE public."Adresler";
       public         heap    postgres    false            �            1259    29331 
   Bilancolar    TABLE     |   CREATE TABLE public."Bilancolar" (
    id integer NOT NULL,
    "MusteriId" integer,
    "Tarih" date,
    "Tutar" money
);
     DROP TABLE public."Bilancolar";
       public         heap    postgres    false            �            1259    29300    GercekMusteriler    TABLE     �   CREATE TABLE public."GercekMusteriler" (
    "MusteriId" integer NOT NULL,
    "Ad" "char",
    "Soyad" "char",
    "TcKimlikNo" "char"
);
 &   DROP TABLE public."GercekMusteriler";
       public         heap    postgres    false            �            1259    29381    Kanallar    TABLE     M   CREATE TABLE public."Kanallar" (
    id integer NOT NULL,
    "Ad" "char"
);
    DROP TABLE public."Kanallar";
       public         heap    postgres    false            �            1259    29295 
   Musteriler    TABLE     v   CREATE TABLE public."Musteriler" (
    id integer NOT NULL,
    "MusteriNo" "char" NOT NULL,
    "KanalId" integer
);
     DROP TABLE public."Musteriler";
       public         heap    postgres    false            �            1259    29305    Musteriler_id_seq    SEQUENCE     �   ALTER TABLE public."Musteriler" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Musteriler_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    29386 
   Sendikalar    TABLE     X   CREATE TABLE public."Sendikalar" (
    "musteriId" integer NOT NULL,
    "Ad" "char"
);
     DROP TABLE public."Sendikalar";
       public         heap    postgres    false            �            1259    29341    TicariFaaliyetler    TABLE     �   CREATE TABLE public."TicariFaaliyetler" (
    id integer NOT NULL,
    "GercekMusteriId" integer,
    "BaslangicTarihi" date
);
 '   DROP TABLE public."TicariFaaliyetler";
       public         heap    postgres    false            �            1259    29306    TuzelMusteriler    TABLE     v   CREATE TABLE public."TuzelMusteriler" (
    "MusteriId" integer NOT NULL,
    "Unvan" "char",
    "VergiNo" "char"
);
 %   DROP TABLE public."TuzelMusteriler";
       public         heap    postgres    false            )          0    29316    Adresler 
   TABLE DATA                 public          postgres    false    218   �'       *          0    29331 
   Bilancolar 
   TABLE DATA                 public          postgres    false    219   �'       &          0    29300    GercekMusteriler 
   TABLE DATA                 public          postgres    false    215   (       ,          0    29381    Kanallar 
   TABLE DATA                 public          postgres    false    221   (       %          0    29295 
   Musteriler 
   TABLE DATA                 public          postgres    false    214   9(       -          0    29386 
   Sendikalar 
   TABLE DATA                 public          postgres    false    222   S(       +          0    29341    TicariFaaliyetler 
   TABLE DATA                 public          postgres    false    220   m(       (          0    29306    TuzelMusteriler 
   TABLE DATA                 public          postgres    false    217   �(       4           0    0    Musteriler_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Musteriler_id_seq"', 1, false);
          public          postgres    false    216            �           2606    29320    Adresler Adresler_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Adresler"
    ADD CONSTRAINT "Adresler_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Adresler" DROP CONSTRAINT "Adresler_pkey";
       public            postgres    false    218            �           2606    29335    Bilancolar Bilancolar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Bilancolar"
    ADD CONSTRAINT "Bilancolar_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Bilancolar" DROP CONSTRAINT "Bilancolar_pkey";
       public            postgres    false    219            �           2606    29304 &   GercekMusteriler GercekMusteriler_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."GercekMusteriler"
    ADD CONSTRAINT "GercekMusteriler_pkey" PRIMARY KEY ("MusteriId");
 T   ALTER TABLE ONLY public."GercekMusteriler" DROP CONSTRAINT "GercekMusteriler_pkey";
       public            postgres    false    215            �           2606    29385    Kanallar Kanallar_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Kanallar"
    ADD CONSTRAINT "Kanallar_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Kanallar" DROP CONSTRAINT "Kanallar_pkey";
       public            postgres    false    221            �           2606    29299    Musteriler Musteriler_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Musteriler"
    ADD CONSTRAINT "Musteriler_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Musteriler" DROP CONSTRAINT "Musteriler_pkey";
       public            postgres    false    214            �           2606    29390    Sendikalar Sendikalar_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Sendikalar"
    ADD CONSTRAINT "Sendikalar_pkey" PRIMARY KEY ("musteriId");
 H   ALTER TABLE ONLY public."Sendikalar" DROP CONSTRAINT "Sendikalar_pkey";
       public            postgres    false    222            �           2606    29345 (   TicariFaaliyetler TicariFaaliyetler_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."TicariFaaliyetler"
    ADD CONSTRAINT "TicariFaaliyetler_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."TicariFaaliyetler" DROP CONSTRAINT "TicariFaaliyetler_pkey";
       public            postgres    false    220            �           2606    29310 $   TuzelMusteriler TuzelMusteriler_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TuzelMusteriler"
    ADD CONSTRAINT "TuzelMusteriler_pkey" PRIMARY KEY ("MusteriId");
 R   ALTER TABLE ONLY public."TuzelMusteriler" DROP CONSTRAINT "TuzelMusteriler_pkey";
       public            postgres    false    217            �           2606    29321     Adresler Adresler_MusteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Adresler"
    ADD CONSTRAINT "Adresler_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"(id);
 N   ALTER TABLE ONLY public."Adresler" DROP CONSTRAINT "Adresler_MusteriId_fkey";
       public          postgres    false    218    3202    214            �           2606    29336 $   Bilancolar Bilancolar_MusteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Bilancolar"
    ADD CONSTRAINT "Bilancolar_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"(id);
 R   ALTER TABLE ONLY public."Bilancolar" DROP CONSTRAINT "Bilancolar_MusteriId_fkey";
       public          postgres    false    3202    214    219            �           2606    29326 0   GercekMusteriler GercekMusteriler_MusteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GercekMusteriler"
    ADD CONSTRAINT "GercekMusteriler_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"(id) NOT VALID;
 ^   ALTER TABLE ONLY public."GercekMusteriler" DROP CONSTRAINT "GercekMusteriler_MusteriId_fkey";
       public          postgres    false    215    3202    214            �           2606    29391 $   Sendikalar Sendikalar_musteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sendikalar"
    ADD CONSTRAINT "Sendikalar_musteriId_fkey" FOREIGN KEY ("musteriId") REFERENCES public."Musteriler"(id);
 R   ALTER TABLE ONLY public."Sendikalar" DROP CONSTRAINT "Sendikalar_musteriId_fkey";
       public          postgres    false    222    3202    214            �           2606    29346 8   TicariFaaliyetler TicariFaaliyetler_GercekMusteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicariFaaliyetler"
    ADD CONSTRAINT "TicariFaaliyetler_GercekMusteriId_fkey" FOREIGN KEY ("GercekMusteriId") REFERENCES public."GercekMusteriler"("MusteriId");
 f   ALTER TABLE ONLY public."TicariFaaliyetler" DROP CONSTRAINT "TicariFaaliyetler_GercekMusteriId_fkey";
       public          postgres    false    215    3204    220            �           2606    29311 .   TuzelMusteriler TuzelMusteriler_MusteriId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TuzelMusteriler"
    ADD CONSTRAINT "TuzelMusteriler_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"(id);
 \   ALTER TABLE ONLY public."TuzelMusteriler" DROP CONSTRAINT "TuzelMusteriler_MusteriId_fkey";
       public          postgres    false    3202    214    217            )   
   x���          *   
   x���          &   
   x���          ,   
   x���          %   
   x���          -   
   x���          +   
   x���          (   
   x���         