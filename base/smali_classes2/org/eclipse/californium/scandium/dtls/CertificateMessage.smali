.class public final Lorg/eclipse/californium/scandium/dtls/CertificateMessage;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "CertificateMessage.java"


# static fields
.field private static final CERTIFICATE_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;

.field private static final CERTIFICATE_LENGTH_BITS:I = 0x18

.field private static final CERTIFICATE_LIST_LENGTH_BITS:I = 0x18

.field private static final CERTIFICATE_TYPE_X509:Ljava/lang/String; = "X.509"

.field private static final EMPTY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final certPath:Ljava/security/cert/CertPath;

.field private final encodedChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final length:I

.field private final publicKey:Ljava/security/PublicKey;

.field private final rawPublicKeyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    .line 82
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;

    const-string v1, "X.509"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->CERTIFICATE_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->EMPTY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 119
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->EMPTY:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    .line 209
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    if-nez p1, :cond_0

    .line 210
    sget-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    .line 211
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->length:I

    .line 212
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private constructor <init>(Ljava/security/cert/CertPath;)V
    .locals 7

    .line 167
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    .line 172
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    .line 174
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 180
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 181
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    .line 182
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    array-length v6, v6
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    .line 191
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Could not encode certificate chain"

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    :cond_0
    move v5, v3

    :cond_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :cond_3
    :goto_1
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->publicKey:Ljava/security/PublicKey;

    .line 195
    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    add-int/lit8 v5, v5, 0x3

    .line 197
    iput v5, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->length:I

    return-void

    .line 169
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Certificate chain must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/CertPathUtil;->generateValidatableCertPath(Ljava/util/List;Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/security/cert/CertPath;)V

    .line 156
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 157
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 159
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "created CERTIFICATE message with truncated certificate chain [length: {}, full-length: {}]"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "created CERTIFICATE message with certificate chain [length: {}]"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const-string v0, "Could not reconstruct the peer\'s public key"

    .line 223
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    .line 228
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    .line 229
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    .line 230
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->length:I

    .line 233
    array-length v2, p1

    if-lez v2, :cond_1

    .line 235
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSubjectPublicKeyAlgorithm([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;->KEY_FACTORIES:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    invoke-virtual {v3, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->get(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;->current()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;->current()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 242
    :cond_0
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Could not reconstruct the peer\'s public key [{}]"

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 246
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->publicKey:Ljava/security/PublicKey;

    return-void

    .line 225
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Raw public key byte array must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/CertificateType;)Lorg/eclipse/californium/scandium/dtls/CertificateMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 350
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v0, p1, :cond_0

    .line 351
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Parsing RawPublicKey CERTIFICATE message"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/16 p1, 0x18

    .line 352
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    .line 353
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {p1, p0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>([B)V

    return-object p1

    .line 354
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v0, p1, :cond_1

    .line 355
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->readX509CertificateMessage(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    move-result-object p0

    return-object p0

    .line 357
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readX509CertificateMessage(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/CertificateMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 363
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Parsing X.509 CERTIFICATE message"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 364
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 365
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 367
    :try_start_0
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->CERTIFICATE_FACTORY:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCertificateFactory;->currentWithCause()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateFactory;

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 372
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeInputStream(I)Ljava/io/ByteArrayInputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/security/cert/CertPath;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 378
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v2, "Cannot parse X.509 certificate chain provided by peer"

    invoke-direct {v0, v2, v1, p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 4

    .line 322
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->getMessageLength()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 324
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    const/16 v2, 0x18

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->getMessageLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 327
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 328
    invoke-virtual {v0, v3, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 334
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain()Ljava/security/cert/CertPath;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->length:I

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 257
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    .line 269
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    .line 270
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    const-string v3, "\n"

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Certificate chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " certificates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Certificate Length: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->encodedChain:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Certificate["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".]: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->rawPublicKeyBytes:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->certPath:Ljava/security/cert/CertPath;

    if-nez v2, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Raw Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
