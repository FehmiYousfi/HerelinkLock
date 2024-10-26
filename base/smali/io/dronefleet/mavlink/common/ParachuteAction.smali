.class public final enum Lio/dronefleet/mavlink/common/ParachuteAction;
.super Ljava/lang/Enum;
.source "ParachuteAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/ParachuteAction;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/ParachuteAction;

.field public static final enum PARACHUTE_DISABLE:Lio/dronefleet/mavlink/common/ParachuteAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum PARACHUTE_ENABLE:Lio/dronefleet/mavlink/common/ParachuteAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum PARACHUTE_RELEASE:Lio/dronefleet/mavlink/common/ParachuteAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/ParachuteAction;

    const/4 v1, 0x0

    const-string v2, "PARACHUTE_DISABLE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/ParachuteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_DISABLE:Lio/dronefleet/mavlink/common/ParachuteAction;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/ParachuteAction;

    const/4 v2, 0x1

    const-string v3, "PARACHUTE_ENABLE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/ParachuteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_ENABLE:Lio/dronefleet/mavlink/common/ParachuteAction;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/ParachuteAction;

    const/4 v3, 0x2

    const-string v4, "PARACHUTE_RELEASE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/ParachuteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_RELEASE:Lio/dronefleet/mavlink/common/ParachuteAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/dronefleet/mavlink/common/ParachuteAction;

    .line 9
    sget-object v4, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_DISABLE:Lio/dronefleet/mavlink/common/ParachuteAction;

    aput-object v4, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_ENABLE:Lio/dronefleet/mavlink/common/ParachuteAction;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/ParachuteAction;->PARACHUTE_RELEASE:Lio/dronefleet/mavlink/common/ParachuteAction;

    aput-object v1, v0, v3

    sput-object v0, Lio/dronefleet/mavlink/common/ParachuteAction;->$VALUES:[Lio/dronefleet/mavlink/common/ParachuteAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParachuteAction;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/ParachuteAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/ParachuteAction;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/ParachuteAction;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/ParachuteAction;->$VALUES:[Lio/dronefleet/mavlink/common/ParachuteAction;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/ParachuteAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/ParachuteAction;

    return-object v0
.end method
