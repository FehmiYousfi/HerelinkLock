.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->lambda$serialize$4(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
