.class public Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;
.super Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;
.source "ResumingClientHandshaker.java"


# static fields
.field private static final ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;


# instance fields
.field private fullHandshake:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 110
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 139
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V

    const/4 p2, 0x0

    .line 115
    iput-boolean p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->fullHandshake:Z

    .line 140
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->set(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session must contain the ID of the session to resume"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receivedServerFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->flightNumber:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->flightNumber:I

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->getHandshakeMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 250
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->cloneMessageDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 254
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->verifyFinished(Lorg/eclipse/californium/scandium/dtls/Finished;[B)V

    .line 256
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;

    invoke-direct {v1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;-><init>()V

    .line 257
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;)V

    .line 258
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->setCurrentWriteState()V

    .line 260
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Finished;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 261
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->createFinishedMessage([B)Lorg/eclipse/californium/scandium/dtls/Finished;

    move-result-object p1

    .line 262
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 263
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->sendLastFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 264
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->contextEstablished()V

    return-void
.end method


# virtual methods
.method protected doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 149
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->fullHandshake:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    return-void

    .line 156
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 167
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->receivedServerFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Received unexpected handshake message [%s] from peer %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 163
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ServerHello;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->receivedServerHello(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    goto :goto_0

    .line 159
    :cond_3
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->receivedHelloVerifyRequest(Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;)V

    :goto_0
    return-void
.end method

.method protected receivedServerHello(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->peerToLog:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v3

    const-string v4, "Server [{}] refuses to resume session [{}], performing full handshake instead..."

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->fullHandshake:Z

    .line 195
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 196
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerHello(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->hasExtendedMasterSecretExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to change extended master secret in resumed session"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 215
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->verifyServerHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    .line 223
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 224
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->supportsConnectionId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getConnectionIdExtension()Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->receivedConnectionIdExtension(Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;)V

    .line 227
    :cond_3
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    .line 228
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->expectChangeCipherSpecMessage()V

    .line 229
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->resumeMasterSecret()V

    :goto_1
    return-void

    .line 216
    :cond_4
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to change protocol version in resumed session"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 204
    :cond_5
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to change cipher suite in resumed session"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 198
    :cond_6
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to change compression method in resumed session"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
.end method

.method public startHandshake()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->handshakeStarted()V

    .line 271
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v7

    .line 272
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->supportedSignatureAlgorithms:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->supportedGroups:Ljava/util/List;

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/ClientHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/DTLSSession;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 274
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsEccBasedCipherSuite(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->expectEcc()V

    .line 278
    :cond_0
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 280
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    invoke-virtual {v8, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 289
    :cond_1
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->addConnectionId(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 290
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->addRecordSizeLimit(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 291
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->addMaxFragmentLength(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 292
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->addServerNameIndication(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 295
    iput-object v8, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    const/4 v0, 0x1

    .line 297
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->flightNumber:I

    .line 298
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0, v8}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 300
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 301
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->INIT:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    return-void
.end method
