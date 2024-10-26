.class public final Lorg/eclipse/californium/scandium/dtls/CertificateVerify;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "CertificateVerify.java"


# static fields
.field private static final HASH_ALGORITHM_BITS:I = 0x8

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SIGNATURE_ALGORITHM_BITS:I = 0x8

.field private static final SIGNATURE_LENGTH_BITS:I = 0x10


# instance fields
.field private final signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field private final signatureBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 77
    invoke-static {p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->sign(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Ljava/util/List;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;[B)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 90
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 3

    const/16 v0, 0x8

    .line 137
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 138
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 139
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v2, v1, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(II)V

    const/16 v0, 0x10

    .line 141
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    .line 143
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    invoke-direct {v0, v2, p0}, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;[B)V

    return-object v0
.end method

.method private static sign(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;",
            ">;)[B"
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->currentWithCause()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Signature;

    .line 163
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    .line 165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 166
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    .line 167
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  [{}] - {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 172
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Could not create signature."

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 109
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 113
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 114
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 116
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 118
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 95
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_VERIFY:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 125
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Signature: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verifySignature(Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->currentWithCause()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 191
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/4 p1, 0x0

    .line 193
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 194
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 195
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  [{}] - {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->signatureBytes:[B

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-void

    :catch_0
    move-exception p1

    .line 203
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Could not verify the client\'s signature."

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 207
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v0, "The client\'s CertificateVerify message could not be verified."

    invoke-direct {p2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2
.end method
