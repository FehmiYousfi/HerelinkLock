.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;

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

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEnumValue(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
