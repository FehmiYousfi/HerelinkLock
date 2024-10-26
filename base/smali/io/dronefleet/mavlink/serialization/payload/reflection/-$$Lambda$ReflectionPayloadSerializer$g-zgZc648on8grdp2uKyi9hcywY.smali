.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->lambda$null$1(Ljava/lang/reflect/Method;)Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    move-result-object p1

    return-object p1
.end method
