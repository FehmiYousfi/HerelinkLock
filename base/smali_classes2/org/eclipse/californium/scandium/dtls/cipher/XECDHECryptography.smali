.class public final Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;
.super Ljava/lang/Object;
.source "XECDHECryptography.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;,
        Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;,
        Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$Initialize;,
        Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    }
.end annotation


# static fields
.field private static final ECDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

.field private static final ECDH_KEY_AGREEMENT_ALGORITHM:Ljava/lang/String; = "ECDH"

.field private static final EC_CURVE_MAP_BY_CURVE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/spec/EllipticCurve;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final EC_CURVE_MAP_BY_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final EC_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

.field private static final EC_KEYPAIR_GENERATOR_ALGORITHM:Ljava/lang/String; = "EC"

.field private static final EC_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

.field private static final EC_KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "EC"

.field protected static final LOGGER:Lorg/slf4j/Logger;

.field private static final XDH_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

.field private static final XDH_KEYPAIR_GENERATOR_ALGORITHM:Ljava/lang/String; = "XDH"

.field private static final XDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

.field private static final XDH_KEY_AGREEMENT_ALGORITHM:Ljava/lang/String; = "XDH"

.field public static final XDH_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

.field private static final XDH_KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "XDH"

.field private static volatile xDHPublicKeyApi:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;


# instance fields
.field private final encodedPoint:[B

.field private privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;

.field private final supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    .line 122
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->init()V

    .line 134
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    const-string v1, "EC"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    .line 142
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    const-string v2, "XDH"

    invoke-direct {v0, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    .line 147
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    .line 156
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    invoke-direct {v0, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    .line 165
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    const-string v1, "ECDH"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->ECDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    .line 173
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    invoke-direct {v0, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    .line 179
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->access$000()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->xDHPublicKeyApi:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_CURVE_MAP_BY_ID:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_CURVE_MAP_BY_CURVE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;->currentWithCause()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 225
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 227
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XDH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;->currentWithCause()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 230
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 232
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 236
    :goto_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->privateKey:Ljava/security/PrivateKey;

    .line 237
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->publicKey:Ljava/security/PublicKey;

    .line 238
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 239
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->encodedPoint(Ljava/security/PublicKey;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->encodedPoint:[B

    .line 240
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->publicKey:Ljava/security/PublicKey;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->encodedPoint:[B

    const-string v1, "OUT: "

    invoke-direct {p0, v1, p1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->check(Ljava/lang/String;Ljava/security/PublicKey;[B)V

    return-void

    .line 234
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported by KeyPairGenerator!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_CURVE_MAP_BY_CURVE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_KEY_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->EC_CURVE_MAP_BY_ID:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEYPAIR_GENERATOR:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyPairGenerator;

    return-object v0
.end method

.method static synthetic access$600()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->xDHPublicKeyApi:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    return-object v0
.end method

.method private check(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 324
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    .line 326
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {p3}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_0
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}ASN1 encoded \'{}\'"

    invoke-interface {v2, v3, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}DHE  encoded \'{}\'"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    :goto_0
    array-length p1, p3

    if-ge v4, p1, :cond_2

    .line 334
    array-length p1, p3

    sub-int/2addr p1, v4

    sub-int/2addr p1, v5

    aget-byte p1, p3, p1

    array-length v0, p2

    sub-int/2addr v0, v4

    sub-int/2addr v0, v5

    aget-byte v0, p2, v0

    if-ne p1, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DHE: failed to encoded point! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", position: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static setXDHPublicKeyApi(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;)V
    .locals 0

    .line 768
    sput-object p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->xDHPublicKeyApi:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public generateSecret([B)Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->privateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->decodedPoint([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->ECDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;->currentWithCause()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreement;

    goto :goto_0

    .line 292
    :cond_0
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->xDHPublicKeyApi:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XDH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->XDH_KEY_AGREEMENT:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyAgreement;->currentWithCause()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreement;

    :goto_0
    const-string v2, "IN: "

    .line 298
    invoke-direct {p0, v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->check(Ljava/lang/String;Ljava/security/PublicKey;[B)V

    .line 301
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 302
    invoke-virtual {v1, v0, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 303
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    const-string v0, "TlsPremasterSecret"

    .line 304
    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 305
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 308
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fail: {} {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    throw p1

    .line 296
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported by JCE!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "private key must not be destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncodedPoint()[B
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->encodedPoint:[B

    return-object v0
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
