.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic f$2:Ljava/lang/Object;

.field private final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

    iput-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$3:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

    iget-object v1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;->f$3:[B

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->lambda$serialize$7$ReflectionPayloadSerializer(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;[BLjava/lang/reflect/Method;)V

    return-void
.end method
