.class public Lorg/eclipse/californium/scandium/dtls/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final CID_LENGTH_BITS:I = 0x8

.field public static final CONTENT_TYPE_BITS:I = 0x8

.field public static final DTLS_HANDSHAKE_HEADER_LENGTH:I = 0x19

.field public static final DTLS_MAX_PLAINTEXT_FRAGMENT_LENGTH:I = 0x4000

.field public static final EPOCH_BITS:I = 0x10

.field public static final LENGTH_BITS:I = 0x10

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final MAX_SEQUENCE_NO:J = 0xffffffffffffL

.field public static final RECORD_HEADER_BITS:I = 0x68

.field public static final RECORD_HEADER_BYTES:I = 0xd

.field public static final SEQUENCE_NUMBER_BITS:I = 0x30

.field private static final SEQUENCE_NUMBER_PLACEHOLDER:[B

.field public static final VERSION_BITS:I = 0x8


# instance fields
.field private connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field private final epoch:I

.field private final followUpRecord:Z

.field private fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

.field private fragmentBytes:[B

.field private padding:I

.field private peerAddress:Ljava/net/InetSocketAddress;

.field private final receiveNanos:J

.field private router:Ljava/net/InetSocketAddress;

.field private final sequenceNumber:J

.field private type:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field private useDeprecatedMac:Z

.field private final version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 107
    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->SEQUENCE_NUMBER_PLACEHOLDER:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 233
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    if-eqz p4, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getNextSequenceNumber(I)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :goto_1
    move-wide v3, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJJZ)V

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    .line 240
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Record;->setType(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    if-eqz p5, :cond_2

    .line 242
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 244
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->useDeprecatedMac:Z

    .line 245
    iput p6, p0, Lorg/eclipse/californium/scandium/dtls/Record;->padding:I

    .line 247
    :cond_2
    invoke-virtual {p4, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteState(I)Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/dtls/Record;->setEncodedFragment(Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    .line 248
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    if-eqz p1, :cond_3

    return-void

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment missing encoded bytes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Fragment must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJLorg/eclipse/californium/scandium/dtls/ConnectionId;[BJZ)V
    .locals 11

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p7

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-wide/from16 v5, p8

    move/from16 v7, p10

    .line 186
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJJZ)V

    if-eqz v9, :cond_1

    if-eqz v10, :cond_0

    .line 192
    iput-object v9, v8, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-object/from16 v0, p6

    .line 193
    iput-object v0, v8, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 194
    iput-object v10, v8, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Fragment bytes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;JLorg/eclipse/californium/scandium/dtls/DTLSMessage;)V
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    .line 269
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJJZ)V

    if-eqz p5, :cond_1

    .line 273
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Record;->setType(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    .line 274
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    .line 275
    invoke-interface {p5}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    .line 276
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    if-eqz p1, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment missing encoded bytes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Fragment must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJJZ)V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffffffL

    cmp-long v0, p3, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    if-ltz p2, :cond_1

    if-eqz p1, :cond_0

    .line 291
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 292
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    .line 293
    iput-wide p3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    .line 294
    iput-wide p5, p0, Lorg/eclipse/californium/scandium/dtls/Record;->receiveNanos:J

    .line 295
    iput-boolean p7, p0, Lorg/eclipse/californium/scandium/dtls/Record;->followUpRecord:Z

    return-void

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Version must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Epoch must not be less than 0! "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Sequence number must not be less than 0! "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Sequence number must be 48 bits only! "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;J)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramReader;",
            "Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;",
            "J)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v2

    const/16 v3, 0x8

    div-int/2addr v2, v3

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 383
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v5

    const/16 v6, 0x68

    if-ge v5, v6, :cond_0

    .line 384
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Received truncated DTLS record(s). Discarding ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v4

    .line 388
    :cond_0
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v5

    .line 389
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v6

    .line 390
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v7

    .line 391
    invoke-static {v6, v7}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->valueOf(II)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v10

    const/16 v6, 0x10

    .line 393
    invoke-virtual {v0, v6}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v11

    const/16 v7, 0x30

    .line 394
    invoke-virtual {v0, v7}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v12

    const/4 v7, 0x0

    .line 397
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v8

    if-ne v5, v8, :cond_3

    if-nez v1, :cond_1

    .line 399
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Received TLS_CID record, but cid is not supported. Discarding ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v4

    .line 401
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 403
    :try_start_0
    invoke-interface {v1, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->read(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v7

    if-nez v7, :cond_3

    .line 405
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Received TLS_CID record, but cid is not matching. Discarding ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 409
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Received TLS_CID record, failed to read cid. Discarding ..."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 413
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Received TLS_CID record, but cid is not used. Discarding ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v4

    :cond_3
    move-object v14, v7

    .line 417
    invoke-virtual {v0, v6}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v7

    div-int/2addr v7, v3

    const/4 v8, 0x1

    if-ge v7, v6, :cond_4

    .line 420
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    const/4 v3, 0x2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Received truncated DTLS record(s) ({} bytes, but only {} available). {} records, {} bytes. Discarding ..."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 427
    :cond_4
    invoke-virtual {v0, v6}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object v15

    .line 429
    invoke-static {v5}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getTypeByValue(I)Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    if-nez v9, :cond_5

    .line 431
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "Received DTLS record of unsupported type [{}]. Discarding ..."

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 433
    :cond_5
    new-instance v5, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v18, v6, 0x1

    move-object v8, v5

    move-wide/from16 v16, p2

    invoke-direct/range {v8 .. v18}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;IJLorg/eclipse/californium/scandium/dtls/ConnectionId;[BJZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v4

    .line 374
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readConnectionIdFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 3

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 458
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v0

    const/16 v1, 0x68

    if-lt v0, v1, :cond_2

    const/16 v0, 0x8

    .line 464
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 465
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v1, 0x50

    .line 468
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->skip(J)J

    .line 469
    invoke-interface {p1, p0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->read(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    const/16 v1, 0x10

    .line 470
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 471
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result p0

    div-int/2addr p0, v0

    if-lt p0, v1, :cond_1

    return-object p1

    .line 473
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Record too small for DTLS length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Record too small for DTLS header"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CID generator must use CID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 457
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "CID generator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 455
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Reader must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setEncodedFragment(Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 848
    invoke-interface {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->useConnectionId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 854
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->padding:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 855
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 857
    :cond_0
    invoke-virtual {p1, p0, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->encrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    .line 858
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    return-void

    .line 850
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "fragment must not return null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setType(Lorg/eclipse/californium/scandium/dtls/ContentType;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 880
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Record$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-void

    .line 878
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decodeFragment(Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    if-nez v0, :cond_8

    .line 776
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    .line 778
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->decrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B

    move-result-object p1

    .line 780
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 781
    array-length v0, p1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 782
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_2

    .line 788
    aget-byte v1, p1, v0

    .line 789
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getTypeByValue(I)Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 793
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    move-object v0, v2

    goto :goto_1

    .line 791
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown inner type! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 786
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "no inner type!"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 796
    :cond_3
    :goto_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/Record$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 824
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    const-string v2, "Cannot decrypt message of unsupported type [{}]"

    invoke-interface {p1, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 820
    :cond_4
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    goto :goto_2

    .line 815
    :cond_5
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    goto :goto_2

    .line 808
    :cond_6
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    goto :goto_2

    .line 801
    :cond_7
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    .line 826
    :goto_2
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-void

    .line 772
    :cond_8
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/Record;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "DTLS read state already applied!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 773
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateAdditionalData(I)[B
    .locals 1

    .line 506
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->useConnectionId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalDataRfc6347(I)[B

    move-result-object p1

    return-object p1

    .line 508
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->useDeprecatedMac:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalDataCidDeprecated(I)[B

    move-result-object p1

    return-object p1

    .line 511
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Record;->generateAdditionalDataCid(I)[B

    move-result-object p1

    return-object p1
.end method

.method protected generateAdditionalDataCid(I)[B
    .locals 5

    .line 533
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 535
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/Record;->SEQUENCE_NUMBER_PLACEHOLDER:[B

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 536
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 537
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 538
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 539
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 540
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 541
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 542
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    const/16 v1, 0x30

    invoke-virtual {v0, v3, v4, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 543
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 544
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 546
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateAdditionalDataCidDeprecated(I)[B
    .locals 5

    .line 567
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 569
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 570
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    const/16 v1, 0x30

    invoke-virtual {v0, v3, v4, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 572
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 573
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 574
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 575
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 576
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 577
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 579
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateAdditionalDataRfc6347(I)[B
    .locals 5

    .line 598
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 600
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 601
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    const/16 v1, 0x30

    invoke-virtual {v0, v3, v4, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 603
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 604
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 605
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 606
    invoke-virtual {v0, p1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 608
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0
.end method

.method public getEpoch()I
    .locals 1

    .line 657
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    return v0
.end method

.method public getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;
    .locals 2

    .line 733
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    if-eqz v0, :cond_0

    return-object v0

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fragment not decoded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFragmentBytes()[B
    .locals 1

    .line 719
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    return-object v0
.end method

.method public getFragmentLength()I
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    array-length v0, v0

    return v0
.end method

.method public getPeerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->peerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getReceiveNanos()J
    .locals 2

    .line 710
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->receiveNanos:J

    return-wide v0
.end method

.method public getRouter()Ljava/net/InetSocketAddress;
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->router:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 661
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    return-wide v0
.end method

.method public getType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public getVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public isDecoded()Z
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFollowUpRecord()Z
    .locals 1

    .line 619
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->followUpRecord:Z

    return v0
.end method

.method public isNewClientHello()Z
    .locals 3

    .line 631
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    .line 635
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->peerAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 317
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->peerAddress:Ljava/net/InetSocketAddress;

    .line 318
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->router:Ljava/net/InetSocketAddress;

    return-void

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Peer\'s address must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peer\'s address already available!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeprecatedMac(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->useDeprecatedMac:Z

    return-void
.end method

.method public size()I
    .locals 2

    .line 355
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0xd

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragmentLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 6

    .line 327
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->useConnectionId()Z

    move-result v0

    .line 328
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xd

    if-eqz v0, :cond_0

    .line 330
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 332
    :cond_0
    new-instance v2, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v2, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 335
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 340
    :goto_0
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 341
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 343
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 344
    iget-wide v4, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    const/16 v1, 0x30

    invoke-virtual {v2, v4, v5, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 348
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    array-length v0, v0

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 349
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    invoke-virtual {v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 351
    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==[ DTLS Record ]=============================================="

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content Type: "

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->type:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Peer address: "

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Version: "

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->version:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Epoch: "

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sequence Number: "

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz v1, :cond_0

    const-string v1, "connection id: "

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "Length: "

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragmentBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fragment:"

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Record;->fragment:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 909
    invoke-interface {v1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "fragment is not decrypted yet"

    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "==============================================================="

    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method useConnectionId()Z
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->connectionId:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected writeExplicitNonce(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    .line 490
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->epoch:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 491
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Record;->sequenceNumber:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    return-void
.end method
