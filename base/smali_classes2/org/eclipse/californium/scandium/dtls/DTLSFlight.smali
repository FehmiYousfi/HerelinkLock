.class public Lorg/eclipse/californium/scandium/dtls/DTLSFlight;
.super Ljava/lang/Object;
.source "DTLSFlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

.field private final dtlsMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveMaxDatagramSize:I

.field private effectiveMaxMessageSize:I

.field private final flightNumber:I

.field private maxDatagramSize:I

.field private maxFragmentSize:I

.field private multiEpoch:I

.field private multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

.field private multiUseCid:Z

.field private final peer:Ljava/net/InetSocketAddress;

.field private final peerToLog:Ljava/lang/Object;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation
.end field

.field private volatile responseCompleted:Z

.field private volatile responseStarted:Z

.field private retransmissionNeeded:Z

.field private timeoutMillis:I

.field private timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private tries:I

.field private useMultiHandshakeMessageRecords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/DTLSContext;ILjava/net/InetSocketAddress;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->retransmissionNeeded:Z

    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    .line 230
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peer:Ljava/net/InetSocketAddress;

    .line 231
    invoke-static {p3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    .line 232
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    .line 233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->dtlsMessages:Ljava/util/List;

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->retransmissionNeeded:Z

    .line 235
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flightNumber:I

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Session must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final cancelTimeout()V
    .locals 2

    .line 675
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 676
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private flushMultiHandshakeMessages()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    new-instance v8, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiEpoch:I

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-boolean v6, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiUseCid:Z

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->getNumberOfHandshakeMessages()I

    move-result v0

    .line 435
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiEpoch:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->getMessageLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x3

    iget v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxMessageSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v4, v2, v0

    const-string v0, "Add {} multi handshake message, epoch {} of {} bytes (max. {}) for [{}]"

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    .line 438
    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiEpoch:I

    .line 439
    iput-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiUseCid:Z

    :cond_0
    return-void
.end method

.method public static incrementTimeout(IFI)I
    .locals 0

    if-ge p0, p2, :cond_0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    .line 742
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 743
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    return p0
.end method

.method private wrapHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 324
    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$100(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 325
    iget v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxDatagramSize:I

    add-int/lit8 v2, v2, -0xd

    .line 329
    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v3, :cond_0

    .line 330
    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v3

    sub-int/2addr v2, v3

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v10

    .line 338
    :goto_0
    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxFragmentSize:I

    if-lt v3, v2, :cond_1

    .line 340
    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxDatagramSize:I

    iput v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    goto :goto_1

    .line 343
    :cond_1
    iget v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxDatagramSize:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    iput v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    move v2, v3

    .line 346
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v3

    if-lez v3, :cond_2

    .line 347
    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMaxCiphertextExpansion()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 354
    :cond_2
    iput v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxMessageSize:I

    .line 356
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->size()I

    move-result v11

    const/4 v3, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-gt v11, v2, :cond_6

    .line 359
    iget-boolean v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->useMultiHandshakeMessageRecords:Z

    if-eqz v4, :cond_5

    .line 360
    iget-object v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    if-eqz v4, :cond_4

    .line 361
    iget v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiEpoch:I

    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-boolean v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiUseCid:Z

    if-ne v4, v7, :cond_3

    iget-object v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->size()I

    move-result v4

    add-int/2addr v4, v11

    if-ge v4, v2, :cond_3

    .line 364
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->add(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 365
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    iget-object v1, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->getMessageLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v13

    iget-object v1, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v1, v3, v12

    const-string v1, "Add multi-handshake-message {} message of {} bytes, resulting in {} bytes for [{}]"

    invoke-interface {v2, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 369
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flushMultiHandshakeMessages()V

    .line 371
    :cond_4
    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    if-nez v3, :cond_5

    if-ge v11, v2, :cond_5

    .line 373
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-direct {v2}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;-><init>()V

    iput-object v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    .line 374
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->add(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 375
    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v2

    iput v2, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiEpoch:I

    .line 376
    iput-boolean v7, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->multiUseCid:Z

    .line 377
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    iget-object v1, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v1, v3, v13

    const-string v1, "Start multi-handshake-message with {} message of {} bytes for [{}]"

    invoke-interface {v2, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 383
    :cond_5
    iget-object v14, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    new-instance v15, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v4

    iget-object v6, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/4 v8, 0x0

    move-object v2, v15

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    iget-object v1, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v1, v3, v13

    const-string v1, "Add {} message of {} bytes for [{}]"

    invoke-interface {v2, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 389
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flushMultiHandshakeMessages()V

    .line 392
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    iget-object v5, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v5, v3, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v12

    const-string v5, "Splitting up {} message of {} bytes for [{}] into multiple handshake fragments of max. {} bytes"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fragmentToByteArray()[B

    move-result-object v3

    .line 397
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageLength()I

    move-result v11

    add-int/lit8 v2, v2, -0xc

    .line 399
    array-length v4, v3

    if-ne v4, v11, :cond_9

    .line 403
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v12

    move v13, v10

    :goto_2
    if-ge v13, v11, :cond_8

    add-int v4, v13, v2

    if-le v4, v11, :cond_7

    sub-int v4, v11, v13

    move v14, v4

    goto :goto_3

    :cond_7
    move v14, v2

    .line 411
    :goto_3
    new-array v9, v14, [B

    .line 412
    invoke-static {v3, v13, v9, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    new-instance v18, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v5

    move-object/from16 v4, v18

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;III[B)V

    .line 417
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fragment for offset {}, {} bytes"

    invoke-interface {v4, v7, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v13, v14

    .line 421
    iget-object v4, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    new-instance v5, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v17

    iget-object v6, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v5

    move-object/from16 v19, v6

    invoke-direct/range {v15 .. v21}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    .line 400
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " differs from message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDtlsMessage(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 249
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->dtlsMessages:Ljava/util/List;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;-><init>(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSFlight$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "message must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Z
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->dtlsMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;

    .line 271
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->toByteArray()[B

    move-result-object v2

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$100(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->toByteArray()[B

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDatagrams(IILjava/lang/Boolean;Ljava/lang/Boolean;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/net/DatagramPacket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    .line 504
    new-instance v3, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v3, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 508
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz p5, :cond_0

    const/16 v8, 0x200

    .line 511
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 514
    :cond_0
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flightNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v9, v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v13, 0x3

    aput-object v10, v9, v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v14, 0x4

    aput-object v10, v9, v14

    const-string v10, "Prepare flight {}, using max. datagram size {}, max. fragment size {} [mhm={}, mr={}]"

    invoke-interface {v8, v10, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v8, p2

    .line 517
    invoke-virtual {v0, v1, v8, v5}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getRecords(IIZ)Ljava/util/List;

    move-result-object v1

    .line 519
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    iget v8, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxMessageSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Effective max. datagram size {}, max. message size {}"

    invoke-interface {v5, v10, v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v5, v11

    .line 521
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "Sending datagram of {} bytes to peer [{}]"

    if-ge v5, v8, :cond_6

    .line 522
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 523
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Record;->toByteArray()[B

    move-result-object v10

    .line 524
    array-length v15, v10

    iget v13, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    if-le v15, v13, :cond_1

    .line 525
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v13, v14, [Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v15

    aput-object v15, v13, v11

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v7

    iget-object v10, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v10, v13, v12

    iget v10, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v13, v15

    const-string v10, "{} record of {} bytes for peer [{}] exceeds max. datagram size [{}], discarding..."

    invoke-interface {v9, v10, v13}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const-string v10, "{}"

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v15, 0x3

    .line 531
    sget-object v13, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    new-array v14, v15, [Ljava/lang/Object;

    array-length v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    iget-object v15, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    aput-object v15, v14, v7

    aput-object v8, v14, v12

    const-string v15, "Sending record of {} bytes to peer [{}]:\n{}"

    invoke-interface {v13, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_2

    .line 532
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v8

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-ne v8, v13, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 534
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 535
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 536
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Record;->toByteArray()[B

    move-result-object v8

    invoke-static {v10, v8}, Lorg/eclipse/californium/elements/util/Bytes;->concatenate([B[B)[B

    move-result-object v10

    :cond_2
    if-eqz v6, :cond_4

    if-eqz p5, :cond_3

    if-eqz v2, :cond_4

    .line 539
    :cond_3
    iget v8, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    array-length v13, v10

    sub-int/2addr v8, v13

    goto :goto_1

    :cond_4
    move v8, v11

    .line 542
    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->size()I

    move-result v13

    if-le v13, v8, :cond_5

    .line 545
    invoke-virtual {v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v8

    .line 546
    new-instance v13, Ljava/net/DatagramPacket;

    array-length v14, v8

    iget-object v15, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    iget-object v11, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-direct {v13, v8, v14, v15, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 548
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v11, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v13, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    invoke-interface {v11, v9, v8, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    :cond_5
    invoke-virtual {v3, v10}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    :goto_2
    add-int/2addr v5, v7

    const/4 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x4

    goto/16 :goto_0

    .line 555
    :cond_6
    invoke-virtual {v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v1

    .line 556
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    iget-object v5, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v2, v1, v3, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 557
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    invoke-interface {v2, v9, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getEffectiveMaxMessageSize()I
    .locals 1

    .line 571
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxMessageSize:I

    return v0
.end method

.method public getFlightNumber()I
    .locals 1

    .line 580
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flightNumber:I

    return v0
.end method

.method public getNumberOfMessages()I
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->dtlsMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecords(IIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 458
    :try_start_0
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxDatagramSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxFragmentSize:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->useMultiHandshakeMessageRecords:Z

    if-ne v0, p3, :cond_0

    const/4 p1, 0x0

    .line 460
    :goto_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 461
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 462
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v2

    .line 463
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v3

    .line 464
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->useConnectionId()Z

    move-result v5

    .line 465
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    new-instance v7, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    invoke-interface {p3, p1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 468
    :cond_0
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->effectiveMaxDatagramSize:I

    .line 469
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxDatagramSize:I

    .line 470
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->maxFragmentSize:I

    .line 471
    iput-boolean p3, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->useMultiHandshakeMessageRecords:Z

    .line 472
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 473
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->dtlsMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;

    .line 474
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)V

    goto :goto_1

    .line 476
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flushMultiHandshakeMessages()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    return-object p1

    :catch_0
    move-exception p1

    .line 479
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 480
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p3, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v0, "Cannot create record"

    invoke-direct {p2, v0, p3, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getTimeout()I
    .locals 1

    .line 605
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    return v0
.end method

.method public getTries()I
    .locals 1

    .line 589
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->tries:I

    return v0
.end method

.method public incrementTimeout(FI)V
    .locals 1

    .line 629
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    invoke-static {v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTimeout(IFI)I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    return-void
.end method

.method public incrementTries()V
    .locals 1

    .line 596
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->tries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->tries:I

    return-void
.end method

.method public isResponseCompleted()Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->responseCompleted:Z

    return v0
.end method

.method public isResponseStarted()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->responseStarted:Z

    return v0
.end method

.method public isRetransmissionNeeded()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->retransmissionNeeded:Z

    return v0
.end method

.method public scheduleRetransmission(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 3

    .line 714
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->responseCompleted:Z

    if-nez v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->isRetransmissionNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->cancelTimeout()V

    .line 719
    :try_start_0
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 720
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "handshake flight to peer {}, retransmission {} ms."

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "handshake flight stopped by shutdown."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    const-string v0, "handshake flight to peer {}, no retransmission!"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setResponseCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->responseCompleted:Z

    .line 693
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->cancelTimeout()V

    return-void
.end method

.method public setResponseStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 668
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->responseStarted:Z

    return-void
.end method

.method public setRetransmissionNeeded(Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->retransmissionNeeded:Z

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 614
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->timeoutMillis:I

    return-void
.end method

.method protected final wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 293
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$100(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v7

    .line 294
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    invoke-interface {v7}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->flushMultiHandshakeMessages()V

    .line 301
    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->records:Ljava/util/List;

    new-instance v9, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-interface {v7}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I

    move-result v2

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Add CCS message of {} bytes for [{}]"

    invoke-interface {v7}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->peerToLog:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " record for flight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 296
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->wrapHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v2, "Cannot create record"

    invoke-direct {v0, v2, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v0
.end method
