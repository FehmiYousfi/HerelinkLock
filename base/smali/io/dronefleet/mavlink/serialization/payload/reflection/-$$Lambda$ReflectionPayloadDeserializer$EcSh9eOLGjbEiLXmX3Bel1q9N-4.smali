.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$EcSh9eOLGjbEiLXmX3Bel1q9N-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$EcSh9eOLGjbEiLXmX3Bel1q9N-4;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$EcSh9eOLGjbEiLXmX3Bel1q9N-4;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->lambda$deserialize$1(Ljava/lang/Class;)Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;

    move-result-object v0

    return-object v0
.end method
