.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;

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

    invoke-static {p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->lambda$deserialize$2(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method