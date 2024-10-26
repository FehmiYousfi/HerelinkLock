.class public abstract Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;
.source "ECDHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;
    }
.end annotation


# static fields
.field private static final CURVE_TYPE_BITS:I = 0x8

.field private static final NAMED_CURVE:I = 0x3

.field private static final NAMED_CURVE_BITS:I = 0x10

.field private static final PUBLIC_LENGTH_BITS:I = 0x8


# instance fields
.field private final encodedPoint:[B

.field private final supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;


# direct methods
.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 78
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 79
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encoded point must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Supported group (curve) must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static readNamedCurve(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 94
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const/16 v1, 0x10

    .line 102
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 103
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromId(I)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isUsable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    .line 110
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;

    invoke-direct {v0, v4, p0}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    return-object v0

    .line 105
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Server used unsupported elliptic curve (%d) for ECDH"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0

    .line 96
    :cond_1
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Curve type [%s] received in ServerKeyExchange message is unsupported"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0
.end method


# virtual methods
.method public getEncodedPoint()[B
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected getNamedCurveLength()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Diffie-Hellman public key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected updateSignatureForNamedCurve(Ljava/security/Signature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getId()I

    move-result v0

    const/4 v1, 0x3

    .line 115
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 116
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    int-to-byte v0, v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 119
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method protected writeNamedCurve(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x3

    .line 88
    invoke-virtual {p1, v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 89
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 90
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->encodedPoint:[B

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    return-void
.end method
