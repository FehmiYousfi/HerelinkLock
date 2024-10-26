.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

.field private final synthetic f$1:[B

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

    iput-object p2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$1:[B

    iput p3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$2:I

    iput p4, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$0:Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;

    iget-object v1, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$1:[B

    iget v2, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$2:I

    iget v3, p0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;->f$3:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->lambda$write$8$ReflectionPayloadSerializer([BIILjava/lang/Integer;)V

    return-void
.end method
