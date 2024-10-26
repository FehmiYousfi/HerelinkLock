.class public abstract Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "HelloHandshakeMessage.java"


# static fields
.field protected static final RANDOM_BYTES:I = 0x20

.field protected static final SESSION_ID_LENGTH_BITS:I = 0x8

.field protected static final VERSION_BITS:I = 0x8


# instance fields
.field protected final extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

.field protected final protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field protected final random:Lorg/eclipse/californium/scandium/dtls/Random;

.field protected final sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;


# direct methods
.method protected constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 53
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    const/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 81
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 82
    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->valueOf(II)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 84
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/Random;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/californium/scandium/dtls/Random;-><init>([B)V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->random:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 86
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;-><init>([B)V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 53
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 69
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 70
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    .line 71
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-direct {p1}, Lorg/eclipse/californium/scandium/dtls/Random;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->random:Lorg/eclipse/californium/scandium/dtls/Random;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ServerHello must be associated with a session ID"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Negotiated protocol version must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    return-void
.end method

.method public getClientCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    return-object v0
.end method

.method public getConnectionIdExtension()Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    return-object v0
.end method

.method public getExtensions()Lorg/eclipse/californium/scandium/dtls/HelloExtensions;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    return-object v0
.end method

.method public getMaxFragmentLengthExtension()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public getRandom()Lorg/eclipse/californium/scandium/dtls/Random;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->random:Lorg/eclipse/californium/scandium/dtls/Random;

    return-object v0
.end method

.method public getRecordSizeLimitExtension()Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->RECORD_SIZE_LIMIT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    return-object v0
.end method

.method public getServerCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    return-object v0
.end method

.method public getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_NAME:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    return-object v0
.end method

.method public getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-object v0
.end method

.method public getSupportedPointFormatsExtension()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EC_POINT_FORMATS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    return-object v0
.end method

.method public getSupportedSignatureAlgorithmsExtension()Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;

    return-object v0
.end method

.method public hasExtendedMasterSecretExtension()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->extensions:Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionId()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    .line 103
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Random:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->random:Lorg/eclipse/californium/scandium/dtls/Random;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/dtls/Random;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Session ID Length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Session ID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeHeader(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 92
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->random:Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Random;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloHandshakeMessage;->sessionId:Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    return-void
.end method
