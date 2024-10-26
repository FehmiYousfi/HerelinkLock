.class public final Lorg/eclipse/californium/scandium/dtls/DTLSContext;
.super Ljava/lang/Object;
.source "DTLSContext.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final RECEIVE_WINDOW_SIZE:J = 0x40L

.field private static final SEQN_VERSION:I = 0x1

.field private static final VERSION:I = 0x3

.field private static final VERSIONS:Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;

.field private static final VERSION_DEPRECATED:I = 0x2


# instance fields
.field private clusterReadMacKey:Ljavax/crypto/SecretKey;

.field private clusterWriteMacKey:Ljavax/crypto/SecretKey;

.field private effectiveMaxMessageSize:I

.field private final handshakeTime:J

.field private volatile macErrors:J

.field private markedAsclosed:Z

.field private readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field private readEpoch:I

.field private readEpochClosed:I

.field private readSequenceNumberClosed:J

.field private readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

.field private volatile receiveWindowLowerBoundary:J

.field private volatile receiveWindowUpperCurrent:J

.field private volatile receivedRecordsVector:J

.field private sequenceNumbers:[J

.field private final session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

.field private useDeprecatedCid:Z

.field private writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field private writeEpoch:I

.field private writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    .line 832
    new-instance v0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;-><init>([I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->VERSIONS:Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;

    return-void

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>(ILorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 6

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 65
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 70
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 76
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 78
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    .line 79
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    .line 90
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    const/4 v1, 0x2

    new-array v2, v1, [J

    .line 100
    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    const-wide/16 v2, -0x1

    .line 109
    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    .line 111
    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    .line 113
    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    const/16 v2, 0x40

    .line 897
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    .line 898
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    .line 899
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    .line 902
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    .line 903
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    if-lez v3, :cond_0

    .line 904
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->fromReader(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 907
    :cond_0
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    .line 908
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 909
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v5

    invoke-static {v3, v5, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->fromReader(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    goto :goto_0

    :cond_1
    if-gt v3, v4, :cond_6

    .line 914
    :goto_0
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 916
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-direct {v3, v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 918
    :cond_2
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumbers(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    if-ne p1, v1, :cond_3

    .line 920
    iput-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    .line 921
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 923
    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result p1

    if-ne p1, v4, :cond_4

    move v0, v4

    :cond_4
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    const/16 p1, 0x10

    .line 924
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    :cond_5
    :goto_1
    const-string p1, "dtls-context"

    .line 926
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->assertFinished(Ljava/lang/String;)V

    return-void

    .line 912
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "write epoch must be 1!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 900
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "read session must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(J)V
    .locals 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 65
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 70
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 76
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 78
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    .line 79
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    .line 90
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 100
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    const-wide/16 v1, -0x1

    .line 109
    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    const-wide/16 v1, 0x0

    .line 110
    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    .line 111
    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    .line 113
    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide v1, 0xffffffffffffL

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 138
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-direct {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    .line 140
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    aput-wide p1, v1, v0

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial sequence number must be greater than 0 and less than 2^48"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;I)V
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->addEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    .line 325
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 326
    sget-object p2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 327
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz p2, :cond_0

    .line 328
    sget-object p2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_READ_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 329
    sget-object p2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_WRITE_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 331
    :cond_0
    iget p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    if-lez p2, :cond_1

    .line 332
    sget-object p2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_MESSAGE_SIZE_LIMIT:Lorg/eclipse/californium/elements/Definition;

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    :cond_1
    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 2

    .line 879
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->VERSIONS:Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->matcher()Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;

    move-result-object v0

    const/16 v1, 0x10

    .line 880
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 882
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 883
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->getReadVersion()I

    move-result v0

    invoke-direct {v1, v0, p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;-><init>(ILorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private incrementWriteEpoch()V
    .locals 4

    .line 378
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    .line 381
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method private resetReceiveWindow()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 797
    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    const-wide/16 v2, -0x1

    .line 798
    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    .line 799
    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    return-void
.end method


# virtual methods
.method public addReadEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 1

    .line 314
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->addEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;I)V

    return-void
.end method

.method public addWriteEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 1

    .line 305
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->addEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;I)V

    return-void
.end method

.method public createReadState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->create(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object p1

    .line 462
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 463
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 464
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->incrementReadEpoch()V

    .line 465
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Setting current read state to{}{}"

    invoke-interface {p2, v0, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public createWriteState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->create(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object p1

    .line 535
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 536
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 537
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->incrementWriteEpoch()V

    .line 538
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Setting current write state to{}{}"

    invoke-interface {p2, v0, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 146
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    .line 148
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 149
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    .line 150
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->destroy()V

    .line 152
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    if-eq v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->destroy()V

    .line 156
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 736
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 739
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    .line 740
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 743
    :cond_3
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 746
    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    if-eqz v2, :cond_7

    .line 750
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpochClosed:I

    iget v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpochClosed:I

    if-eq v2, v3, :cond_6

    return v1

    .line 753
    :cond_6
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumberClosed:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumberClosed:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 757
    :cond_7
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-static {v2, v3}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 760
    :cond_8
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-static {v2, v3}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 763
    :cond_9
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    iget v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    if-eq v2, v3, :cond_a

    return v1

    .line 766
    :cond_a
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    return v1

    .line 769
    :cond_b
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    return v1

    .line 772
    :cond_c
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    return v1

    .line 775
    :cond_d
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    iget v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    if-eq v2, v3, :cond_e

    return v1

    .line 778
    :cond_e
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    aget-wide v4, v3, v2

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    aget-wide v2, v3, v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_f

    return v1

    .line 781
    :cond_f
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    if-eq v2, v3, :cond_10

    return v1

    .line 784
    :cond_10
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    iget p1, p1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    if-eq v2, p1, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public getLastHandshakeTime()J
    .locals 2

    .line 296
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    return-wide v0
.end method

.method public getMacErrors()J
    .locals 2

    .line 818
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    return-wide v0
.end method

.method public getNextSequenceNumber()J
    .locals 2

    .line 394
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getNextSequenceNumber(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextSequenceNumber(I)J
    .locals 5

    .line 408
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffffffL

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 410
    aput-wide v3, v0, p1

    return-wide v1

    .line 416
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Maximum sequence number for epoch has been reached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0
.end method

.method public getReadEpoch()I
    .locals 1

    .line 360
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    return v0
.end method

.method public getReadState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    return-object v0
.end method

.method public getReadStateCipher()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    return-object v0
.end method

.method public getThreadLocalClusterReadMac()Ljavax/crypto/Mac;
    .locals 3

    .line 278
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 284
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "cluster read MAC error!"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadLocalClusterWriteMac()Ljavax/crypto/Mac;
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "cluster write MAC error"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriteConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0
.end method

.method public getWriteEpoch()I
    .locals 1

    .line 342
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    return v0
.end method

.method getWriteState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
    .locals 1

    .line 492
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteState(I)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v0

    return-object v0
.end method

.method getWriteState(I)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
    .locals 0

    if-nez p1, :cond_0

    .line 504
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    return-object p1

    .line 506
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    return-object p1
.end method

.method public getWriteStateCipher()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 709
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 710
    iget-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    if-eqz v3, :cond_0

    mul-int/2addr v0, v1

    .line 711
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpochClosed:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 712
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumberClosed:J

    goto :goto_0

    :cond_0
    mul-int/2addr v0, v1

    .line 714
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 715
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    :goto_0
    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 717
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 718
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    aget-wide v3, v4, v3

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 719
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 720
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    iget-wide v5, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    ushr-long/2addr v5, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 721
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 722
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 723
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 724
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 725
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public incrementMacErrors()V
    .locals 4

    .line 808
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    return-void
.end method

.method incrementReadEpoch()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->resetReceiveWindow()V

    .line 374
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/security/auth/Destroyable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/security/auth/Destroyable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeState:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/security/auth/Destroyable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDuplicate(J)Z
    .locals 8

    .line 622
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 628
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    long-to-int v0, v2

    shl-long v2, v4, v0

    .line 631
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 632
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    const/4 p1, 0x2

    iget-wide v6, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    const/4 p1, 0x3

    iget-wide v6, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p1

    const-string p1, "Checking sequence no [{}] using bit mask [{}] against received records [{}] with lower boundary [{}]"

    invoke-interface {v0, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    :cond_1
    iget-wide p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    and-long/2addr p1, v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method

.method public isMarkedAsClosed()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    return v0
.end method

.method public isRecordProcessable(IJI)Z
    .locals 7

    .line 584
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 588
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    if-gez p4, :cond_0

    return v2

    .line 595
    :cond_0
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    cmp-long p1, p2, v3

    if-lez p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 597
    :cond_2
    iget-boolean p4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    if-eqz p4, :cond_4

    .line 598
    iget p4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpochClosed:I

    if-le p1, p4, :cond_3

    return v1

    :cond_3
    if-ne p1, p4, :cond_4

    .line 601
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumberClosed:J

    cmp-long p1, p2, v3

    if-ltz p1, :cond_4

    return v1

    .line 607
    :cond_4
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->isDuplicate(J)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 586
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "wrong epoch! "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public markCloseNotify(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    .line 701
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpochClosed:I

    .line 702
    iput-wide p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readSequenceNumberClosed:J

    return-void
.end method

.method public markRecordAsRead(IJ)Z
    .locals 10

    .line 657
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 661
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    cmp-long p1, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-wide/16 v2, 0x1

    if-eqz p1, :cond_1

    .line 663
    iput-wide p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    const-wide/16 v4, 0x40

    sub-long v4, p2, v4

    add-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 664
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 665
    iget-wide v8, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    sub-long v8, v4, v8

    cmp-long v6, v8, v6

    if-lez v6, :cond_1

    .line 668
    iget-wide v6, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    long-to-int v8, v8

    ushr-long/2addr v6, v8

    iput-wide v6, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    .line 669
    iput-wide v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    .line 672
    :cond_1
    iget-wide v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    sub-long v4, p2, v4

    long-to-int v4, v4

    shl-long/2addr v2, v4

    .line 674
    iget-wide v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    .line 675
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->LOGGER:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v1

    iget-wide p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v0

    const/4 p2, 0x2

    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p2

    const-string p2, "Updated receive window with sequence number [{}]: new upper boundary [{}], new bit vector [{}]"

    invoke-interface {v2, p2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return p1

    .line 659
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong epoch! "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readSequenceNumbers(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 10

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 955
    invoke-static {p1, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v0

    if-lez v0, :cond_0

    .line 957
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p1

    const/16 v0, 0x30

    .line 958
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v1

    .line 959
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v3

    const/16 v0, 0x40

    .line 960
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v5

    .line 961
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v7

    const-string v0, "dtls-context-sequence-numbers"

    .line 962
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->assertFinished(Ljava/lang/String;)V

    .line 964
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p1

    .line 965
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    iget v9, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    aput-wide v1, v0, v9

    .line 966
    iput-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    .line 967
    iput-wide v5, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    const-wide/16 v0, 0x40

    add-long/2addr v3, v0

    int-to-long v0, p1

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v3, v0

    .line 968
    iput-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowUpperCurrent:J

    .line 969
    iput-wide v7, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    :cond_0
    return-void
.end method

.method setClusterMacKeys(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 245
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterWriteMacKey:Ljavax/crypto/SecretKey;

    .line 246
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->clusterReadMacKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method setDeprecatedCid(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    return-void
.end method

.method public setEffectiveMaxMessageSize(I)V
    .locals 0

    .line 556
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    return-void
.end method

.method setReadConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-void
.end method

.method setReadEpoch(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 367
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->resetReceiveWindow()V

    .line 368
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Read epoch must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setWriteConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-void
.end method

.method setWriteEpoch(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 350
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    return-void

    .line 348
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Write epoch must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useDeprecatedCid()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    return v0
.end method

.method public writeSequenceNumbers(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 940
    invoke-static {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v1

    .line 941
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->sequenceNumbers:[J

    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    aget-wide v3, v2, v3

    const/16 v2, 0x30

    invoke-virtual {p1, v3, v4, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 942
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receiveWindowLowerBoundary:J

    invoke-virtual {p1, v3, v4, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 943
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->receivedRecordsVector:J

    const/16 v4, 0x40

    invoke-virtual {p1, v2, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 944
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->macErrors:J

    invoke-virtual {p1, v2, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 945
    invoke-static {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    return-void
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)Z
    .locals 5

    .line 848
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markedAsclosed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    const/16 v1, 0x10

    .line 851
    invoke-static {p1, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v0

    .line 852
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->handshakeTime:J

    const/16 v4, 0x40

    invoke-virtual {p1, v2, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 853
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 854
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 855
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->readEpoch:I

    if-lez v2, :cond_1

    .line 856
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 858
    :cond_1
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 859
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeEpoch:I

    if-lez v2, :cond_2

    .line 860
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 862
    :cond_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeConnectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 863
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeSequenceNumbers(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 864
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid:Z

    invoke-virtual {p1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 865
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->effectiveMaxMessageSize:I

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 866
    invoke-static {p1, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    const/4 p1, 0x1

    return p1
.end method
