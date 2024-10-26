.class public Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;
.super Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;
.source "ResumingServerHandshaker.java"


# static fields
.field private static final ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;


# instance fields
.field private fullHandshake:Z

.field private handshakeHash:[B

.field private pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

.field private final resumptionHandler:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 85
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

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    return-void
.end method

.method public constructor <init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 0

    .line 128
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;-><init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    .line 129
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getResumptionVerifier()Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->resumptionHandler:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    .line 130
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->resumptionHandler:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    if-eqz p1, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resumption verifier missing!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processResumingClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v4, "Start resumption-handshake with peer [{}]."

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 355
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->flightNumber:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->flightNumber:I

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v2

    .line 358
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/ServerHello;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v5

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v0

    invoke-direct {v3, v4, v5, v1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 360
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->addHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    .line 361
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 362
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 364
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;

    invoke-direct {p1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;-><init>()V

    .line 365
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;)V

    .line 367
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->getHandshakeMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->cloneMessageDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->resumeMasterSecret()V

    .line 373
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->setCurrentWriteState()V

    .line 375
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->createFinishedMessage([B)Lorg/eclipse/californium/scandium/dtls/Finished;

    move-result-object p1

    .line 376
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 378
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Finished;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 379
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->handshakeHash:[B

    .line 380
    invoke-virtual {p0, v2}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 381
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->ABBREVIATED_HANDSHAKE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    .line 382
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->expectChangeCipherSpecMessage()V

    return-void
.end method

.method private processResumptionVerificationResult(Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 246
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;->getDTLSSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    .line 247
    invoke-direct {p0, v1, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->validateResumption(Lorg/eclipse/californium/scandium/dtls/DTLSSession;Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->fullHandshake:Z

    .line 248
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->fullHandshake:Z

    if-eqz v2, :cond_0

    .line 249
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v4, "DTLS session {} not available, switch to full-handshake with peer [{}]!"

    invoke-interface {p1, v4, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 252
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->receivedClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->set(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    .line 255
    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 256
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->setCustomArgument(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    .line 257
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->processResumingClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    :goto_0
    return-void

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "resumption verification not pending!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receivedClientFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->handshakeHash:[B

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->verifyFinished(Lorg/eclipse/californium/scandium/dtls/Finished;[B)V

    .line 203
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->contextEstablished()V

    .line 204
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->handshakeCompleted()V

    return-void
.end method

.method private receivedResumingClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 183
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->resumptionHandler:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;->verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Process client hello synchronous"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->processResumptionVerificationResult(Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->startInitialTimeout()V

    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Client hello doesn\'t contain session id required for resumption!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateResumption(Lorg/eclipse/californium/scandium/dtls/DTLSSession;Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p2

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "DTLS session {} not available, switch to full-handshake with peer [{}]!"

    invoke-interface {p1, v2, p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v2

    .line 280
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCipherSuites()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "Cipher-suite {} changed by client hello, switch to full-handshake with peer [{}]!"

    invoke-interface {p1, v2, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 284
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object p1

    aput-object p1, v2, v5

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "Protocol version {} changed by client hello {}, switch to full-handshake with peer [{}]!"

    invoke-interface {v1, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 288
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCompressionMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "Compression method {} changed by client hello, switch to full-handshake with peer [{}]!"

    invoke-interface {p2, v2, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 292
    :cond_3
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->is(Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasExtendedMasterSecretExtension()Z

    move-result v1

    if-nez v1, :cond_4

    .line 308
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v1, "Missing extended master secret extension in client hello, switch to full-handshake with peer [{}]!"

    invoke-interface {p1, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 312
    :cond_4
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->OPTIONAL:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasExtendedMasterSecretExtension()Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v1, "Disabled extended master secret extension in client hello, switch to full-handshake with peer [{}]!"

    invoke-interface {p1, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 324
    :cond_5
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->sniEnabled:Z

    if-eqz p1, :cond_6

    .line 325
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object p2

    .line 327
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 328
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v5

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "SNI {} changed by client hello {}, switch to full-handshake with peer [{}]!"

    invoke-interface {v1, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_6
    return v5
.end method


# virtual methods
.method protected doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->fullHandshake:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    return-void

    .line 144
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 151
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->receivedClientFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->peerToLog:Ljava/lang/Object;

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

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->handshakeStarted()V

    .line 147
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->receivedResumingClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    :goto_0
    return-void
.end method

.method protected hasPendingApiCall()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->hasPendingApiCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public processAsyncHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 218
    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Process client hello asynchronous"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->ensureUndestroyed()V

    .line 221
    move-object v0, p1

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;->processResumptionVerificationResult(Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;)V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->processAsyncHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method
