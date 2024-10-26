.class public final enum Lio/dronefleet/mavlink/common/MavOdidHeightRef;
.super Ljava/lang/Enum;
.source "MavOdidHeightRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavOdidHeightRef;

.field public static final enum OVER_GROUND:Lio/dronefleet/mavlink/common/MavOdidHeightRef;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum OVER_TAKEOFF:Lio/dronefleet/mavlink/common/MavOdidHeightRef;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    const/4 v1, 0x0

    const-string v2, "OVER_TAKEOFF"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavOdidHeightRef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->OVER_TAKEOFF:Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    const/4 v2, 0x1

    const-string v3, "OVER_GROUND"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavOdidHeightRef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->OVER_GROUND:Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    .line 9
    sget-object v3, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->OVER_TAKEOFF:Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    aput-object v3, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->OVER_GROUND:Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidHeightRef;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavOdidHeightRef;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavOdidHeightRef;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidHeightRef;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavOdidHeightRef;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    return-object v0
.end method
