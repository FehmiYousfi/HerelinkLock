.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-static {p1, p2}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->lambda$deserialize$3(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method
