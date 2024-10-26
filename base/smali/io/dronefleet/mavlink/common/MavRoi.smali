.class public final enum Lio/dronefleet/mavlink/common/MavRoi;
.super Ljava/lang/Enum;
.source "MavRoi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavRoi;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavRoi;

.field public static final enum LOCATION:Lio/dronefleet/mavlink/common/MavRoi;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum NONE:Lio/dronefleet/mavlink/common/MavRoi;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum TARGET:Lio/dronefleet/mavlink/common/MavRoi;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum WPINDEX:Lio/dronefleet/mavlink/common/MavRoi;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum WPNEXT:Lio/dronefleet/mavlink/common/MavRoi;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavRoi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->NONE:Lio/dronefleet/mavlink/common/MavRoi;

    .line 24
    new-instance v0, Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v2, 0x1

    const-string v3, "WPNEXT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavRoi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->WPNEXT:Lio/dronefleet/mavlink/common/MavRoi;

    .line 30
    new-instance v0, Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v3, 0x2

    const-string v4, "WPINDEX"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavRoi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->WPINDEX:Lio/dronefleet/mavlink/common/MavRoi;

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v4, 0x3

    const-string v5, "LOCATION"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavRoi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->LOCATION:Lio/dronefleet/mavlink/common/MavRoi;

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v5, 0x4

    const-string v6, "TARGET"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavRoi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->TARGET:Lio/dronefleet/mavlink/common/MavRoi;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavRoi;

    .line 12
    sget-object v6, Lio/dronefleet/mavlink/common/MavRoi;->NONE:Lio/dronefleet/mavlink/common/MavRoi;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavRoi;->WPNEXT:Lio/dronefleet/mavlink/common/MavRoi;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavRoi;->WPINDEX:Lio/dronefleet/mavlink/common/MavRoi;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavRoi;->LOCATION:Lio/dronefleet/mavlink/common/MavRoi;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavRoi;->TARGET:Lio/dronefleet/mavlink/common/MavRoi;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/common/MavRoi;->$VALUES:[Lio/dronefleet/mavlink/common/MavRoi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavRoi;
    .locals 1

    .line 12
    const-class v0, Lio/dronefleet/mavlink/common/MavRoi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavRoi;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavRoi;
    .locals 1

    .line 12
    sget-object v0, Lio/dronefleet/mavlink/common/MavRoi;->$VALUES:[Lio/dronefleet/mavlink/common/MavRoi;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavRoi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavRoi;

    return-object v0
.end method
