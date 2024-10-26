.class public final Lorg/eclipse/californium/scandium/dtls/ServerHello;
.super Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;
.source "ServerHello.java"


# instance fields
.field private final cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field private final compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    const/16 v0, 0x10

    .line 82
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 83
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 84
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eqz v1, :cond_1

    .line 88
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getMethodByCode(I)Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 94
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-void

    .line 89
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server tries to negotiate NULL cipher suite"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Server selected unknown cipher suite [%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 75
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 76
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Negotiated compression method must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Negotiated cipher suite must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ServerHello;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ServerHello;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 99
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 100
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->writeHeader(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 102
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 103
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 105
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 107
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object v0
.end method

.method public getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 127
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 163
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cipher Suite: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Compression Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHello;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
