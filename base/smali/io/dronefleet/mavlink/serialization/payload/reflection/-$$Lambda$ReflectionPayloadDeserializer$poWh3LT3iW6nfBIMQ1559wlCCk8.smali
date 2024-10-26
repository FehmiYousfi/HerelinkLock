.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic f$2:[B

.field private final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;Ljava/util/concurrent/atomic/AtomicInteger;[BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;

    iput-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$2:[B

    iput-object p4, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;

    iget-object v1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$2:[B

    iget-object v3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;->f$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->lambda$deserialize$8$ReflectionPayloadDeserializer(Ljava/util/concurrent/atomic/AtomicInteger;[BLjava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method
