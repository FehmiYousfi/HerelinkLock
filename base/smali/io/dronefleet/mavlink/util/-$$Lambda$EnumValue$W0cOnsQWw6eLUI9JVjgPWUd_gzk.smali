.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;

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

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->lambda$create$1(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
