.class public Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;
.super Ljava/lang/Object;
.source "DirectPayloadDeserializer.java"

# interfaces
.implements Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;


# static fields
.field private static final builderMethodsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field input:Ljava/nio/ByteBuffer;

.field private final readLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->builderMethodsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->readLock:Ljava/util/concurrent/locks/Lock;

    const/16 v0, 0x400

    .line 27
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->input:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static getBuilderMethods(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 31
    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->builderMethodsCache:Ljava/util/Map;

    new-instance v1, Lio/dronefleet/mavlink/serialization/payload/direct/-$$Lambda$DirectPayloadDeserializer$GLZaKbYtcKQE4cM2dxcVqtkZLeg;

    invoke-direct {v1, p0}, Lio/dronefleet/mavlink/serialization/payload/direct/-$$Lambda$DirectPayloadDeserializer$GLZaKbYtcKQE4cM2dxcVqtkZLeg;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic lambda$getBuilderMethods$0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    const-string p1, "deserialize"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 33
    const-class v2, Ljava/nio/ByteBuffer;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->input:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    iget-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->input:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 49
    :try_start_1
    invoke-static {p2}, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->getBuilderMethods(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->input:Ljava/nio/ByteBuffer;

    aput-object v2, v1, v0

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    iget-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catch_0
    move-exception p2

    .line 53
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    throw p1
.end method
