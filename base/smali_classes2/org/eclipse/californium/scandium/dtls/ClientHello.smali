.class public final Lorg/eclipse/californium/scandium/dtls/ClientHello;
.super Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;
.source "ClientHello.java"


# static fields
.field private static final CIPHER_SUITES_LENGTH_BITS:I = 0x10

.field private static final COMPRESSION_METHODS_LENGTH_BITS:I = 0x8

.field private static final COOKIE_LENGTH_BITS:I = 0x8


# instance fields
.field private final compressionMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private cookie:[B

.field private final supportedCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    const/16 v0, 0x8

    .line 189
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    const/16 v1, 0x10

    .line 191
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 192
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->listFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    .line 195
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 196
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->listFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    .line 200
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "ClientHello message contains empty ServerNameExtension"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/ClientHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/DTLSSession;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;",
            "Lorg/eclipse/californium/scandium/dtls/DTLSSession;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/ClientHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 130
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;",
            "Lorg/eclipse/californium/scandium/dtls/SessionId;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    .line 140
    sget-object p1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 143
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    .line 148
    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsEccBasedCipherSuite(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;

    invoke-direct {p1, p7}, Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 153
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->DEFAULT_POINT_FORMATS_EXTENSION:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 157
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 158
    invoke-direct {p0, p5}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->useCertificateTypeRawPublicKeyOnly(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p6}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->useCertificateTypeRawPublicKeyOnly(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithms(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 162
    invoke-static {p4, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getCompatibleSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 165
    :cond_2
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;

    invoke-direct {p1, p4}, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 168
    :cond_3
    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsCipherSuiteRequiringCertExchange(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    invoke-direct {p0, p5}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->useCertificateTypeExtension(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    invoke-direct {p1, p5}, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;-><init>(Ljava/util/List;)V

    .line 173
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 179
    :cond_4
    invoke-direct {p0, p6}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->useCertificateTypeExtension(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 180
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    invoke-direct {p1, p6}, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;-><init>(Ljava/util/List;)V

    .line 182
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    :cond_5
    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ClientHello;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 266
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method

.method private useCertificateTypeExtension(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method private useCertificateTypeRawPublicKeyOnly(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public fragmentToByteArray()[B
    .locals 4

    .line 240
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 241
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->writeHeader(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 243
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 245
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x10

    mul-int/2addr v1, v3

    div-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 247
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->listToWriter(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/util/List;)V

    .line 249
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 250
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->listToWriter(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/util/List;)V

    .line 252
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 254
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommonCipherSuites(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 392
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCompressionMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()[B
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 297
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportedEllipticCurvesExtension()Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ELLIPTIC_CURVES:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;

    return-object v0
.end method

.method public hasCookie()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCompressionMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public setCookie([B)V
    .locals 1

    if-eqz p1, :cond_1

    .line 345
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 348
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    .line 349
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->fragmentChanged()V

    return-void

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cookie must not be empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookie must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    .line 272
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, 0x2

    .line 273
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cookie Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cookie: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cipher Suites ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " suites, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cipher Suite: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Compression Methods ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " methods, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->compressionMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Compression Method: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    :cond_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateForCookie(Ljavax/crypto/Mac;)V
    .locals 5

    .line 359
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->toByteArray()[B

    move-result-object v0

    .line 360
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xc

    add-int/2addr v2, v3

    .line 363
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ClientHello;->cookie:[B

    if-eqz v4, :cond_0

    .line 364
    array-length v4, v4

    add-int/2addr v2, v4

    .line 366
    :cond_0
    invoke-virtual {p1, v0, v3, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 367
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
