.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-static {p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->lambda$null$2(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I

    move-result p1

    return p1
.end method
