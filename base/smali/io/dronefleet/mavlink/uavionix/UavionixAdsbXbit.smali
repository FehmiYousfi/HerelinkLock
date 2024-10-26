.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
.super Ljava/lang/Enum;
.source "UavionixAdsbXbit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

.field public static final enum ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;->ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    .line 9
    sget-object v2, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;->ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    aput-object v2, v0, v1

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    return-object v0
.end method
