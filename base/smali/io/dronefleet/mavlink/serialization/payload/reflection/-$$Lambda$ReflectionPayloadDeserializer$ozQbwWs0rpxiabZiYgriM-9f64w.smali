.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/lang/reflect/Method;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;->f$0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;->f$0:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->lambda$null$7(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;

    move-result-object v0

    return-object v0
.end method
