.class public final synthetic Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->lambda$getEntryByValue$6(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
