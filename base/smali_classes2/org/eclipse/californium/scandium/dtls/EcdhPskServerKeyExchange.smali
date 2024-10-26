.class public final Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;
.source "EcdhPskServerKeyExchange.java"


# static fields
.field private static final IDENTITY_HINT_LENGTH_BITS:I = 0x10


# instance fields
.field private final hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;)V
    .locals 1

    .line 55
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->getEncodedPoint()[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PSK hint must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>([BLorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p2, p3}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    .line 64
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 84
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v0

    .line 85
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->readNamedCurve(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;

    move-result-object p0

    .line 86
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->encodedPoint:[B

    invoke-direct {v1, v0, v2, p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;-><init>([BLorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V

    return-object v1
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 69
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 70
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 71
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->writeNamedCurve(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 72
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHint()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->getNamedCurveLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 108
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PSK Identity Hint: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "not present"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    :goto_0
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
