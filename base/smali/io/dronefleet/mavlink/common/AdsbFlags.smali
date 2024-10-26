.class public final enum Lio/dronefleet/mavlink/common/AdsbFlags;
.super Ljava/lang/Enum;
.source "AdsbFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/AdsbFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/AdsbFlags;

.field public static final enum BARO_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum SIMULATED:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum SOURCE_UAT:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8000
    .end annotation
.end field

.field public static final enum VALID_ALTITUDE:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum VALID_COORDS:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum VALID_HEADING:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum VALID_SQUAWK:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum VALID_VELOCITY:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum VERTICAL_VELOCITY_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v1, 0x0

    const-string v2, "VALID_COORDS"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_COORDS:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v2, 0x1

    const-string v3, "VALID_ALTITUDE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_ALTITUDE:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v3, 0x2

    const-string v4, "VALID_HEADING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_HEADING:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v4, 0x3

    const-string v5, "VALID_VELOCITY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_VELOCITY:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v5, 0x4

    const-string v6, "VALID_CALLSIGN"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v6, 0x5

    const-string v7, "VALID_SQUAWK"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_SQUAWK:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v7, 0x6

    const-string v8, "SIMULATED"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->SIMULATED:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v8, 0x7

    const-string v9, "VERTICAL_VELOCITY_VALID"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->VERTICAL_VELOCITY_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/16 v9, 0x8

    const-string v10, "BARO_VALID"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->BARO_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/16 v10, 0x9

    const-string v11, "SOURCE_UAT"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/AdsbFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->SOURCE_UAT:Lio/dronefleet/mavlink/common/AdsbFlags;

    const/16 v0, 0xa

    new-array v0, v0, [Lio/dronefleet/mavlink/common/AdsbFlags;

    .line 9
    sget-object v11, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_COORDS:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v11, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_ALTITUDE:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_HEADING:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_VELOCITY:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VALID_SQUAWK:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->SIMULATED:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->VERTICAL_VELOCITY_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->BARO_VALID:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbFlags;->SOURCE_UAT:Lio/dronefleet/mavlink/common/AdsbFlags;

    aput-object v1, v0, v10

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->$VALUES:[Lio/dronefleet/mavlink/common/AdsbFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AdsbFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/AdsbFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/AdsbFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/AdsbFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/AdsbFlags;->$VALUES:[Lio/dronefleet/mavlink/common/AdsbFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/AdsbFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/AdsbFlags;

    return-object v0
.end method
