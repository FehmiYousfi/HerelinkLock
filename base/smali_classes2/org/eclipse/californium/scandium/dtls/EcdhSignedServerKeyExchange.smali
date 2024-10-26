.class public final Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;
.source "EcdhSignedServerKeyExchange.java"


# static fields
.field private static final HASH_ALGORITHM_BITS:I = 0x8

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SIGNATURE_ALGORITHM_BITS:I = 0x8

.field private static final SIGNATURE_LENGTH_BITS:I = 0x10


# instance fields
.field private final signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field private final signatureEncoded:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B[B)V
    .locals 0

    .line 120
    invoke-direct {p0, p2, p3}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    if-nez p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature and hash algorithm cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 128
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;Ljava/security/PrivateKey;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 85
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->getEncodedPoint()[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 95
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object p1

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->currentWithCause()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Signature;

    .line 98
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 99
    invoke-direct {p0, p1, p4, p5}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->updateSignature(Ljava/security/Signature;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V

    .line 100
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    const-string p1, "Server failed to sign key exchange: %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p5, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p3, p4, p5}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p2, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature and hash algorithm cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->readNamedCurve(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 162
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 163
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 164
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v3, v2, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(II)V

    const/16 v1, 0x10

    .line 165
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v2

    move-object p0, v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object p0, v2

    .line 167
    :goto_0
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;

    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->encodedPoint:[B

    invoke-direct {v1, v2, v3, v0, p0}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B[B)V

    return-object v1
.end method

.method private updateSignature(Ljava/security/Signature;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 221
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Random;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 222
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/Random;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 223
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->updateSignatureForNamedCurve(Ljava/security/Signature;)V

    return-void
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 140
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 141
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->writeNamedCurve(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 144
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 149
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 151
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 153
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 135
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->getNamedCurveLength()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 228
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 231
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Signature: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v0, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public verifySignature(Ljava/security/PublicKey;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 189
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureAndHashAlgorithm:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->currentWithCause()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    .line 191
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 193
    invoke-direct {p0, v1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->updateSignature(Ljava/security/Signature;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V

    .line 195
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->signatureEncoded:[B

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Could not verify the server\'s signature."

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 203
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p3, "The server\'s ECDHE key exchange message\'s signature could not be verified."

    invoke-direct {p2, p3, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2

    .line 184
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 185
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p3, "The server\'s ECDHE key exchange message has no signature."

    invoke-direct {p2, p3, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2
.end method
