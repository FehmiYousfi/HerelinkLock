.class public final synthetic Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->lambda$getEnumEntry$1(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
