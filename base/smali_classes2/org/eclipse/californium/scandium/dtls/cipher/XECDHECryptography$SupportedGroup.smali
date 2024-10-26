.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
.super Ljava/lang/Enum;
.source "XECDHECryptography.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum X25519:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum X448:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum arbitrary_explicit_char2_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum arbitrary_explicit_prime_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum brainpoolP256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum brainpoolP384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum brainpoolP512r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum ffdhe2048:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum ffdhe3072:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum ffdhe4096:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum ffdhe6144:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum ffdhe8192:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp160k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp160r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp160r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp192k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp192r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp224k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp224r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp256k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum secp521r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect163k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect163r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect163r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect193r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect193r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect233k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect233r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect239k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect283k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect283r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect409k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect409r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect571k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

.field public static final enum sect571r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final asn1header:[B

.field private final encodedPointSizeInBytes:I

.field private final id:I

.field private final keyFactory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

.field private final keySizeInBytes:I

.field private final recommended:Z

.field private final usable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 353
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "sect163k1"

    invoke-direct {v0, v3, v2, v1, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 354
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v3, 0x2

    const-string v4, "sect163r1"

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 355
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v4, 0x3

    const-string v5, "sect163r2"

    invoke-direct {v0, v5, v3, v4, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 356
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v5, 0x4

    const-string v6, "sect193r1"

    invoke-direct {v0, v6, v4, v5, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect193r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 357
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v6, 0x5

    const-string v7, "sect193r2"

    invoke-direct {v0, v7, v5, v6, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect193r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 358
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v7, 0x6

    const-string v8, "sect233k1"

    invoke-direct {v0, v8, v6, v7, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect233k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 359
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/4 v8, 0x7

    const-string v9, "sect233r1"

    invoke-direct {v0, v9, v7, v8, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect233r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 360
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v9, 0x8

    const-string v10, "sect239k1"

    invoke-direct {v0, v10, v8, v9, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect239k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 361
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v10, 0x9

    const-string v11, "sect283k1"

    invoke-direct {v0, v11, v9, v10, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect283k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 362
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v11, 0xa

    const-string v12, "sect283r1"

    invoke-direct {v0, v12, v10, v11, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect283r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 363
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v12, 0xb

    const-string v13, "sect409k1"

    invoke-direct {v0, v13, v11, v12, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect409k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 364
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v13, 0xc

    const-string v14, "sect409r1"

    invoke-direct {v0, v14, v12, v13, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect409r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 365
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v14, 0xd

    const-string v15, "sect571k1"

    invoke-direct {v0, v15, v13, v14, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect571k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 366
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v15, 0xe

    const-string v13, "sect571r1"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect571r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 367
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp160k1"

    const/16 v14, 0xf

    invoke-direct {v0, v13, v15, v14, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 368
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp160r1"

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 369
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp160r2"

    const/16 v14, 0x10

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 370
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp192k1"

    const/16 v14, 0x11

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp192k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 371
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp192r1"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp192r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 372
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp224k1"

    const/16 v14, 0x13

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp224k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 373
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp224r1"

    const/16 v14, 0x14

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp224r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 374
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp256k1"

    const/16 v14, 0x15

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp256k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 375
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp256r1"

    const/16 v14, 0x16

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 376
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp384r1"

    const/16 v14, 0x17

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 377
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "secp521r1"

    const/16 v14, 0x18

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp521r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 378
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "brainpoolP256r1"

    const/16 v14, 0x19

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 379
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "brainpoolP384r1"

    const/16 v14, 0x1a

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 380
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "brainpoolP512r1"

    const/16 v14, 0x1b

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP512r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 381
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v17, "X25519"

    const/16 v18, 0x1c

    const/16 v19, 0x1d

    const/16 v20, 0x20

    const-string v21, "XDH"

    const/16 v22, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X25519:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 382
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v24, "X448"

    const/16 v25, 0x1d

    const/16 v26, 0x1e

    const/16 v27, 0x38

    const-string v28, "XDH"

    const/16 v29, 0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X448:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 383
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "ffdhe2048"

    const/16 v14, 0x1e

    const/16 v15, 0x100

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe2048:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 384
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "ffdhe3072"

    const/16 v14, 0x1f

    const/16 v15, 0x101

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe3072:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 385
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "ffdhe4096"

    const/16 v14, 0x20

    const/16 v15, 0x102

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe4096:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 386
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "ffdhe6144"

    const/16 v14, 0x21

    const/16 v15, 0x103

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe6144:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 387
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "ffdhe8192"

    const/16 v14, 0x22

    const/16 v15, 0x104

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe8192:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 388
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "arbitrary_explicit_prime_curves"

    const/16 v14, 0x23

    const v15, 0xff01

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->arbitrary_explicit_prime_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 389
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const-string v13, "arbitrary_explicit_char2_curves"

    const/16 v14, 0x24

    const v15, 0xff02

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->arbitrary_explicit_char2_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v0, 0x25

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 351
    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v13, v0, v2

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v2, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect163r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect193r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect193r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect233k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect233r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect239k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect283k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect283r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect409k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v11

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect409r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    aput-object v1, v0, v12

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect571k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->sect571r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp160r2:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp192k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp192r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp224k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp224r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp256k1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->secp521r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP256r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP384r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->brainpoolP512r1:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X25519:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X448:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe2048:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe3072:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe4096:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe6144:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->ffdhe8192:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->arbitrary_explicit_prime_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->arbitrary_explicit_char2_curves:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 449
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->id:I

    .line 450
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->algorithmName:Ljava/lang/String;

    .line 451
    iput p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keySizeInBytes:I

    .line 452
    iput p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPointSizeInBytes:I

    .line 453
    iput-boolean p6, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->recommended:Z

    const/4 p1, 0x0

    .line 457
    :try_start_0
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$500()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;->currentWithCause()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/KeyPairGenerator;

    .line 458
    new-instance p5, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p6}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 460
    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    .line 461
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 462
    array-length p2, p1

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 465
    sget-object p4, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p6, "Group [{}] is not supported by JCE! {}"

    invoke-interface {p4, p6, p5, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 467
    :goto_0
    iput-boolean p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->usable:Z

    .line 468
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->asn1header:[B

    .line 469
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keyFactory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    .line 470
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$400()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 408
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->id:I

    const-string p1, "EC"

    .line 409
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->algorithmName:Ljava/lang/String;

    .line 410
    iput-boolean p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->recommended:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p4, 0x0

    .line 416
    :try_start_0
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$100()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;->currentWithCause()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 417
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 419
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 420
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p2

    .line 423
    :try_start_1
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    :try_start_2
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, p1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v0, p1

    move v2, p4

    move v3, v2

    .line 427
    :goto_0
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Group [{}] is not supported by JCE! {}"

    invoke-interface {v4, v6, v5, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p1

    move-object p1, v0

    .line 430
    :goto_1
    iput v2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keySizeInBytes:I

    .line 431
    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPointSizeInBytes:I

    .line 432
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->asn1header:[B

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move p2, p4

    .line 433
    :goto_2
    iput-boolean p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->usable:Z

    .line 434
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$300()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keyFactory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    .line 435
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$400()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static fromId(I)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 544
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object p0
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 556
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_0

    .line 557
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    .line 558
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object p0

    .line 559
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;->isSupporting(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    :try_start_0
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;->getCurveName(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 568
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-static {v1, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID.1.3.101.112"

    .line 570
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "EdDSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "OID.1.3.101.113"

    .line 572
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 573
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X448:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object p0

    .line 575
    :cond_3
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v3, "No supported curve {}/{}"

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 571
    :cond_4
    :goto_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->X25519:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object p0

    :catch_0
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getPreferredGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 679
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUsableGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 659
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->access$700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUsableGroupsArray()[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 2

    .line 670
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->access$700()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method

.method public static isEcPublicKey(Ljava/security/PublicKey;)Z
    .locals 2

    .line 590
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 593
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;->isSupporting(Ljava/security/PublicKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupported(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 608
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isEcPublicKey(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isUsable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 351
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 351
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method


# virtual methods
.method public decodedPoint([B)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 526
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPointSizeInBytes:I

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->asn1header:[B

    invoke-static {v0, p1}, Lorg/eclipse/californium/elements/util/Bytes;->concatenate([B[B)[B

    move-result-object p1

    .line 531
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 532
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keyFactory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;->currentWithCause()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyFactory;

    .line 533
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded point must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPointSizeInBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encoded point must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodedPoint(Ljava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 504
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 508
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->asn1header:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 506
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "public key must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedPointSizeInBytes()I
    .locals 1

    .line 635
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPointSizeInBytes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 479
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->id:I

    return v0
.end method

.method public getKeySizeInBytes()I
    .locals 1

    .line 625
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->keySizeInBytes:I

    return v0
.end method

.method public isRecommended()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->recommended:Z

    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->usable:Z

    return v0
.end method
