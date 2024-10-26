.class public Lio/dronefleet/mavlink/MavlinkConnection;
.super Ljava/lang/Object;
.source "MavlinkConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/MavlinkConnection$Builder;
    }
.end annotation


# static fields
.field private static COMMON_DIALECT:Lio/dronefleet/mavlink/MavlinkDialect;


# instance fields
.field private final defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

.field private final deserializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;

.field private final dialects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/OutputStream;

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final reader:Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

.field private sequence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;

.field private final systemDialects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/MavlinkConnection;->COMMON_DIALECT:Lio/dronefleet/mavlink/MavlinkDialect;

    return-void
.end method

.method constructor <init>(Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;Ljava/io/OutputStream;Ljava/util/Map;Lio/dronefleet/mavlink/MavlinkDialect;Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            "Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;",
            "Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;",
            ")V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    .line 204
    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->reader:Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

    .line 205
    iput-object p2, p0, Lio/dronefleet/mavlink/MavlinkConnection;->out:Ljava/io/OutputStream;

    .line 206
    iput-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->dialects:Ljava/util/Map;

    .line 207
    iput-object p4, p0, Lio/dronefleet/mavlink/MavlinkConnection;->defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

    .line 208
    iput-object p5, p0, Lio/dronefleet/mavlink/MavlinkConnection;->deserializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;

    .line 209
    iput-object p6, p0, Lio/dronefleet/mavlink/MavlinkConnection;->serializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;

    .line 210
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->systemDialects:Ljava/util/Map;

    .line 211
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 212
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$000()Lio/dronefleet/mavlink/MavlinkDialect;
    .locals 1

    .line 42
    sget-object v0, Lio/dronefleet/mavlink/MavlinkConnection;->COMMON_DIALECT:Lio/dronefleet/mavlink/MavlinkDialect;

    return-object v0
.end method

.method public static builder(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;
    .locals 2

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lio/dronefleet/mavlink/MavlinkConnection$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/dronefleet/mavlink/MavlinkConnection;
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/MavlinkConnection;->builder(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->build()Lio/dronefleet/mavlink/MavlinkConnection;

    move-result-object p0

    return-object p0
.end method

.method private getMessageType(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Lio/dronefleet/mavlink/MavlinkDialect;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/protocol/MavlinkPacket;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getMessageId()I

    move-result v0

    invoke-interface {p2, v0}, Lio/dronefleet/mavlink/MavlinkDialect;->supports(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getMessageId()I

    move-result v0

    invoke-interface {p2, v0}, Lio/dronefleet/mavlink/MavlinkDialect;->resolve(I)Ljava/lang/Class;

    move-result-object p2

    .line 415
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 416
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->crc()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->validateCrc(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessageType(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/util/List;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/protocol/MavlinkPacket;",
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 394
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/MavlinkDialect;

    .line 395
    invoke-direct {p0, p1, v0}, Lio/dronefleet/mavlink/MavlinkConnection;->getMessageType(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Lio/dronefleet/mavlink/MavlinkDialect;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private send(Lio/dronefleet/mavlink/protocol/MavlinkPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getRawBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 382
    iget-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public getDialect(I)Lio/dronefleet/mavlink/MavlinkDialect;
    .locals 1

    .line 372
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->systemDialects:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dronefleet/mavlink/MavlinkDialect;

    return-object p1
.end method

.method public next()Lio/dronefleet/mavlink/MavlinkMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->reader:Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->next()Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Lio/dronefleet/mavlink/MavlinkDialect;

    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->systemDialects:Ljava/util/Map;

    .line 242
    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lio/dronefleet/mavlink/MavlinkConnection;->defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dronefleet/mavlink/MavlinkDialect;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lio/dronefleet/mavlink/MavlinkConnection;->COMMON_DIALECT:Lio/dronefleet/mavlink/MavlinkDialect;

    aput-object v3, v1, v2

    .line 241
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dronefleet/mavlink/MavlinkConnection;->getMessageType(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v2, p0, Lio/dronefleet/mavlink/MavlinkConnection;->deserializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getPayload()[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    instance-of v2, v1, Lio/dronefleet/mavlink/minimal/Heartbeat;

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v1

    check-cast v2, Lio/dronefleet/mavlink/minimal/Heartbeat;

    .line 248
    iget-object v3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->dialects:Ljava/util/Map;

    invoke-virtual {v2}, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot()Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    invoke-virtual {v4}, Lio/dronefleet/mavlink/util/EnumValue;->entry()Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->systemDialects:Ljava/util/Map;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lio/dronefleet/mavlink/MavlinkConnection;->dialects:Ljava/util/Map;

    invoke-virtual {v2}, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot()Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->entry()Ljava/lang/Enum;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->isMavlink2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    new-instance v2, Lio/dronefleet/mavlink/Mavlink2Message;

    invoke-direct {v2, v0, v1}, Lio/dronefleet/mavlink/Mavlink2Message;-><init>(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_1
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 257
    :cond_1
    :try_start_1
    new-instance v2, Lio/dronefleet/mavlink/MavlinkMessage;

    invoke-direct {v2, v0, v1}, Lio/dronefleet/mavlink/MavlinkMessage;-><init>(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    :cond_2
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection;->reader:Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->drop()V

    goto/16 :goto_0

    .line 264
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 266
    iget-object v1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 267
    throw v0
.end method

.method public send1(IILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 281
    iget-object v1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->serializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;

    invoke-interface {v1, p3}, Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v7

    .line 282
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 284
    :try_start_0
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    mul-int/lit16 v1, p1, 0x100

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 285
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->id()I

    move-result v5

    .line 291
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->crc()I

    move-result v6

    move v3, p1

    move v4, p2

    .line 286
    invoke-static/range {v2 .. v7}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->createMavlink1Packet(IIIII[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dronefleet/mavlink/MavlinkConnection;->send(Lio/dronefleet/mavlink/protocol/MavlinkPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    throw p1
.end method

.method public send2(IILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 309
    iget-object v1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->serializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;

    invoke-interface {v1, p3}, Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v7

    .line 310
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 312
    :try_start_0
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    mul-int/lit16 v1, p1, 0x100

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 313
    iget-object p3, p0, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->id()I

    move-result v5

    .line 319
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->crc()I

    move-result v6

    move v3, p1

    move v4, p2

    .line 314
    invoke-static/range {v2 .. v7}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->createUnsignedMavlink2Packet(IIIII[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dronefleet/mavlink/MavlinkConnection;->send(Lio/dronefleet/mavlink/protocol/MavlinkPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 323
    throw p1
.end method

.method public send2(IILjava/lang/Object;IJ[B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 339
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    .line 341
    iget-object v2, v1, Lio/dronefleet/mavlink/MavlinkConnection;->serializer:Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;

    move-object/from16 v3, p3

    invoke-interface {v2, v3}, Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v8

    .line 342
    iget-object v2, v1, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 344
    :try_start_0
    iget-object v2, v1, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    move v4, p1

    mul-int/lit16 v3, v4, 0x100

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 345
    iget-object v5, v1, Lio/dronefleet/mavlink/MavlinkConnection;->sequence:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->id()I

    move-result v6

    .line 351
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;->crc()I

    move-result v7

    move v3, v2

    move v4, p1

    move v5, p2

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    .line 346
    invoke-static/range {v3 .. v12}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->createSignedMavlink2Packet(IIIII[BIJ[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dronefleet/mavlink/MavlinkConnection;->send(Lio/dronefleet/mavlink/protocol/MavlinkPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, v1, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lio/dronefleet/mavlink/MavlinkConnection;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    throw v0
.end method
