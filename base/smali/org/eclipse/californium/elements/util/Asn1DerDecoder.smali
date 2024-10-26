.class public Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.super Ljava/lang/Object;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;,
        Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;,
        Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;,
        Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;,
        Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;
    }
.end annotation


# static fields
.field private static final BIT_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final CONTEXT_SPECIFIC_0:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final CONTEXT_SPECIFIC_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final CONTEXT_SPECIFIC_PRIMITIVE_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field public static final DH:Ljava/lang/String; = "DH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DSA:Ljava/lang/String; = "DSA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EC:Ljava/lang/String; = "EC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EC_PUBLIC_KEY_UNCOMPRESSED:I = 0x4

.field public static final ECv2:Ljava/lang/String; = "EC.v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ED25519:Ljava/lang/String; = "Ed25519"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ED25519v2:Ljava/lang/String; = "Ed25519.v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ED448:Ljava/lang/String; = "Ed448"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ED448v2:Ljava/lang/String; = "Ed448.v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDDSA:Ljava/lang/String; = "EdDSA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

.field private static final MAX_DEFAULT_LENGTH:I = 0x10000

.field private static final MAX_OID_LENGTH:I = 0x20

.field private static final OCTET_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

.field private static final OID_CN:[B

.field private static final OID_DH_KEY_AGREEMENT:[B

.field private static final OID_DH_PUBLIC_KEY:[B

.field private static final OID_DSA_PUBLIC_KEY:[B

.field private static final OID_EC_PUBLIC_KEY:[B

.field public static final OID_ED25519:Ljava/lang/String; = "OID.1.3.101.112"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OID_ED25519_PUBLIC_KEY:[B

.field public static final OID_ED448:Ljava/lang/String; = "OID.1.3.101.113"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OID_ED448_PUBLIC_KEY:[B

.field private static final OID_RSA_PUBLIC_KEY:[B

.field public static final OID_X25519:Ljava/lang/String; = "OID.1.3.101.110"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OID_X25519_PUBLIC_KEY:[B

.field private static final OID_X448_PUBLIC_KEY:[B

.field public static final OID_XD448:Ljava/lang/String; = "OID.1.3.101.111"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RSA:Ljava/lang/String; = "RSA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final SET:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

.field private static final TAGS_STRING:[I

.field private static final TAG_BIT_STRING:I = 0x3

.field private static final TAG_BMP_STRING:I = 0x1e

.field private static final TAG_CONTEXT_0_SPECIFIC:I = 0xa0

.field private static final TAG_CONTEXT_1_SPECIFIC:I = 0xa1

.field private static final TAG_CONTEXT_1_SPECIFIC_PRIMITIVE:I = 0x81

.field private static final TAG_INTEGER:I = 0x2

.field private static final TAG_OCTET_STRING:I = 0x4

.field private static final TAG_OID:I = 0x6

.field private static final TAG_PRINTABLE_STRING:I = 0x13

.field private static final TAG_SEQUENCE:I = 0x30

.field private static final TAG_SET:I = 0x31

.field private static final TAG_TELETEX_STRING:I = 0x14

.field private static final TAG_UNIVERSAL_STRING:I = 0x1c

.field private static final TAG_UTF8_STRING:I = 0xc

.field private static final UCS_2:Ljava/nio/charset/Charset;

.field private static final UCS_4:Ljava/nio/charset/Charset;

.field public static final X25519:Ljava/lang/String; = "X25519"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final X25519v2:Ljava/lang/String; = "X25519.v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final X448:Ljava/lang/String; = "X448"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final X448v2:Ljava/lang/String; = "X448.v2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 282
    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->TAGS_STRING:[I

    const/16 v0, 0x9

    new-array v1, v0, [B

    .line 301
    fill-array-data v1, :array_1

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_RSA_PUBLIC_KEY:[B

    new-array v0, v0, [B

    .line 308
    fill-array-data v0, :array_2

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DH_KEY_AGREEMENT:[B

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 315
    fill-array-data v1, :array_3

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DH_PUBLIC_KEY:[B

    new-array v1, v0, [B

    .line 319
    fill-array-data v1, :array_4

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DSA_PUBLIC_KEY:[B

    new-array v0, v0, [B

    .line 323
    fill-array-data v0, :array_5

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_EC_PUBLIC_KEY:[B

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 329
    fill-array-data v1, :array_6

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_X25519_PUBLIC_KEY:[B

    new-array v1, v0, [B

    .line 335
    fill-array-data v1, :array_7

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_X448_PUBLIC_KEY:[B

    new-array v1, v0, [B

    .line 341
    fill-array-data v1, :array_8

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_ED25519_PUBLIC_KEY:[B

    new-array v1, v0, [B

    .line 347
    fill-array-data v1, :array_9

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_ED448_PUBLIC_KEY:[B

    new-array v1, v0, [B

    .line 353
    fill-array-data v1, :array_a

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_CN:[B

    .line 357
    new-instance v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/high16 v2, 0x10000

    const/16 v3, 0x30

    const-string v4, "SEQUENCE"

    invoke-direct {v1, v3, v2, v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 361
    new-instance v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/16 v3, 0x31

    const-string v4, "SET"

    invoke-direct {v1, v3, v2, v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SET:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 365
    new-instance v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-direct {v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;-><init>()V

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    .line 369
    new-instance v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    invoke-direct {v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;-><init>()V

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    .line 373
    new-instance v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const-string v3, "BIT STRING"

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->BIT_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 378
    new-instance v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/4 v1, 0x4

    const-string v3, "OCTET STRING"

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OCTET_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 383
    new-instance v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/16 v1, 0xa0

    const-string v3, "CONTEXT SPECIFIC 0"

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_0:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 388
    new-instance v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/16 v1, 0xa1

    const-string v3, "CONTEXT SPECIFIC 1"

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    .line 395
    new-instance v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/16 v1, 0x81

    const-string v3, "CONTEXT SPECIFIC PRIMITIVE 1"

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_PRIMITIVE_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ISO-10646-UCS-2"

    .line 414
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    .line 417
    :goto_0
    sput-object v1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->UCS_2:Ljava/nio/charset/Charset;

    :try_start_1
    const-string v1, "ISO-10646-UCS-4"

    .line 420
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 423
    :catchall_1
    sput-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->UCS_4:Ljava/nio/charset/Charset;

    .line 424
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x13
        0x1e
        0x1c
        0x14
    .end array-data

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3et
        0x2t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x2bt
        0x65t
        0x6et
    .end array-data

    :array_7
    .array-data 1
        0x2bt
        0x65t
        0x6ft
    .end array-data

    :array_8
    .array-data 1
        0x2bt
        0x65t
        0x70t
    .end array-data

    :array_9
    .array-data 1
        0x2bt
        0x65t
        0x71t
    .end array-data

    :array_a
    .array-data 1
        0x55t
        0x4t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/nio/charset/Charset;
    .locals 1

    .line 41
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->UCS_2:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$300()Ljava/nio/charset/Charset;
    .locals 1

    .line 41
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->UCS_4:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static equalKeyAlgorithmSynonyms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    invoke-static {p0, p1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->equalKeyAlgorithmSynonyms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "EC"

    .line 946
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 947
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 948
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 949
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 969
    invoke-static {p0, p1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 981
    invoke-static {p0, p0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 982
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 994
    invoke-static {p0, p0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 995
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKeyAlgorithm([BI)Ljava/lang/String;
    .locals 3

    .line 445
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_EC_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p0, "EC"

    goto :goto_0

    :cond_0
    const-string p0, "EC.v2"

    :goto_0
    move-object v1, p0

    goto/16 :goto_2

    .line 447
    :cond_1
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_RSA_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_d

    const-string p0, "RSA"

    goto :goto_0

    .line 449
    :cond_2
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DSA_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_d

    const-string p0, "DSA"

    goto :goto_0

    .line 451
    :cond_3
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DH_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v2, "DH"

    if-eqz v0, :cond_4

    if-nez p1, :cond_d

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 453
    :cond_4
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_DH_KEY_AGREEMENT:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_d

    goto :goto_1

    .line 455
    :cond_5
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_ED25519_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    const-string p0, "Ed25519"

    goto :goto_0

    :cond_6
    const-string p0, "Ed25519.v2"

    goto :goto_0

    .line 457
    :cond_7
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_ED448_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    const-string p0, "Ed448"

    goto :goto_0

    :cond_8
    const-string p0, "Ed448.v2"

    goto :goto_0

    .line 459
    :cond_9
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_X25519_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_a

    const-string p0, "X25519"

    goto :goto_0

    :cond_a
    const-string p0, "X25519.v2"

    goto :goto_0

    .line 461
    :cond_b
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_X448_PUBLIC_KEY:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_d

    if-nez p1, :cond_c

    const-string p0, "X448"

    goto :goto_0

    :cond_c
    const-string p0, "X448.v2"

    goto :goto_0

    :cond_d
    :goto_2
    return-object v1
.end method

.method public static isEcBased(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "EC"

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 478
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static readCNFromDN([B)Ljava/lang/String;
    .locals 5

    .line 1007
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 1008
    sget-object p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SET:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v0

    .line 1011
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    sget-object v2, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v2

    .line 1013
    sget-object v3, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v3, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v3

    .line 1014
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID_CN:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1016
    :try_start_0
    new-instance v3, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;

    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->TAGS_STRING:[I

    invoke-direct {v3, v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;-><init>([I)V

    .line 1017
    invoke-virtual {v3, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->readStringValue(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readEcPrivateKeyV2([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 772
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 773
    sget-object p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 775
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v0

    .line 776
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 778
    :try_start_0
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :catch_0
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OCTET_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v0

    .line 786
    sget-object v2, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_0:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v2, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v2

    .line 788
    :try_start_1
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v4, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 789
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v4

    const/16 v5, 0x8

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/2addr v4, v5

    .line 790
    array-length v6, v0

    if-ne v6, v4, :cond_0

    .line 794
    new-instance v4, Ljava/security/spec/ECPrivateKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v4, v6, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 795
    new-instance v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;-><init>()V

    const-string v3, "EC"

    .line 796
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->access$002(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    .line 798
    sget-object v3, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v3, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 799
    sget-object v3, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->BIT_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v3, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 801
    invoke-virtual {p0, v5}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 803
    invoke-static {p0, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readEcPublicKey(Lorg/eclipse/californium/elements/util/DatagramReader;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->access$102(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    goto :goto_0

    .line 791
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "private key size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 809
    throw p0

    :catch_2
    move-exception p0

    .line 806
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static readEcPublicKey(Lorg/eclipse/californium/elements/util/DatagramReader;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 834
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    const/16 v1, 0x8

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 836
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 837
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v4

    div-int/2addr v4, v1

    const/4 v1, 0x4

    if-ne v3, v1, :cond_0

    .line 838
    rem-int/lit8 v1, v4, 0x2

    if-nez v1, :cond_0

    .line 839
    div-int/lit8 v4, v4, 0x2

    if-ne v4, v0, :cond_0

    .line 841
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 842
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 843
    new-instance p0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v2, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string p1, "EC"

    .line 844
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readEdDsaPrivateKeyV2([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 865
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 866
    sget-object p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 868
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v0

    .line 869
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 871
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v0

    .line 874
    new-instance v2, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 875
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v4, v2, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v2

    .line 877
    invoke-static {v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v2

    .line 878
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v4, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 882
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OCTET_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v4, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v4

    .line 884
    sget-object v5, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_0:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v5, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    .line 885
    invoke-static {v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 886
    new-instance v5, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    invoke-direct {v5}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;-><init>()V

    .line 889
    new-instance v6, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v7, 0x30

    invoke-direct {v6, v7}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 890
    invoke-virtual {v6, v7}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    const/16 v8, 0x8

    .line 891
    invoke-virtual {v6, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->space(I)I

    move-result v9

    const/4 v10, 0x2

    .line 892
    invoke-virtual {v6, v10}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 893
    invoke-virtual {v6, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 894
    invoke-virtual {v6, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 895
    invoke-virtual {v6, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 896
    invoke-virtual {v6, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 897
    invoke-virtual {v6, v9, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeSize(II)V

    .line 899
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v6}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 900
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v5, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->access$002(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    .line 904
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 905
    invoke-virtual {v1, v7}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 906
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->space(I)I

    move-result v3

    .line 907
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    const/4 v0, 0x3

    .line 908
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 909
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->space(I)I

    move-result v0

    .line 910
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_PRIMITIVE_1:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v4, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 911
    invoke-virtual {v1, v0, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeSize(II)V

    .line 912
    invoke-virtual {v1, v3, v8}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeSize(II)V

    .line 913
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 914
    invoke-virtual {v2, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->access$102(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5
.end method

.method public static readOidString(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/lang/String;
    .locals 1

    .line 532
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 533
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    .line 521
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readPrivateKey([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 745
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readPrivateKeyAlgorithm([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Ed25519.v2"

    if-eq v0, v1, :cond_2

    const-string v1, "Ed448.v2"

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "EC.v2"

    if-ne v0, v1, :cond_1

    .line 750
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readEcPrivateKeyV2([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    move-result-object p0

    goto :goto_1

    .line 752
    :cond_1
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 753
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 754
    new-instance p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;-><init>()V

    .line 755
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->access$002(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    goto :goto_1

    .line 748
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readEdDsaPrivateKeyV2([B)Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static readPrivateKeyAlgorithm([B)Ljava/lang/String;
    .locals 5

    .line 660
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 661
    sget-object p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 663
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v0

    .line 664
    sget-object v2, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->INTEGER:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;

    invoke-virtual {v2, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;->toInteger([B)I

    move-result v0

    const-string v2, " not supported!"

    if-ltz v0, :cond_3

    const/4 v3, 0x1

    if-gt v0, v3, :cond_3

    .line 670
    :try_start_0
    sget-object v4, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v4, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v4

    .line 672
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object v4

    .line 673
    invoke-static {v4, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getPublicKeyAlgorithm([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    if-ne v0, v3, :cond_2

    .line 679
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OCTET_STRING:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    .line 681
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->CONTEXT_SPECIFIC_0:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 684
    :try_start_1
    sget-object v3, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->OID:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;

    invoke-virtual {v3, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;->toString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :try_start_2
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "EC.v2"
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, p0

    :catch_1
    :cond_0
    move-object p0, v1

    if-eqz p0, :cond_1

    :goto_0
    return-object p0

    .line 696
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 699
    :cond_2
    throw v4

    .line 666
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readSequenceEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    .line 494
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readSequenceValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    .line 508
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readSubjectPublicKey([B)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSubjectPublicKeyAlgorithm([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 609
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static readSubjectPublicKeyAlgorithm([B)Ljava/lang/String;
    .locals 2

    .line 565
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 566
    sget-object p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 568
    sget-object v0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->SEQUENCE:Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 570
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readOidValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 572
    invoke-static {p0, v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getPublicKeyAlgorithm([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
