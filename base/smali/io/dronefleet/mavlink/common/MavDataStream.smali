.class public final enum Lio/dronefleet/mavlink/common/MavDataStream;
.super Ljava/lang/Enum;
.source "MavDataStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavDataStream;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavDataStream;

.field public static final enum ALL:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum EXTENDED_STATUS:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum EXTRA1:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum EXTRA2:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum EXTRA3:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum POSITION:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum PROPULSION:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field

.field public static final enum RAW_CONTROLLER:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum RAW_SENSORS:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum RC_CHANNELS:Lio/dronefleet/mavlink/common/MavDataStream;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->ALL:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v2, 0x1

    const-string v3, "RAW_SENSORS"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->RAW_SENSORS:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 27
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v3, 0x2

    const-string v4, "EXTENDED_STATUS"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->EXTENDED_STATUS:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v4, 0x3

    const-string v5, "RC_CHANNELS"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->RC_CHANNELS:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v5, 0x4

    const-string v6, "RAW_CONTROLLER"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->RAW_CONTROLLER:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v6, 0x5

    const-string v7, "POSITION"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->POSITION:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v7, 0x6

    const-string v8, "EXTRA1"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA1:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/4 v8, 0x7

    const-string v9, "EXTRA2"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA2:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/16 v9, 0x8

    const-string v10, "EXTRA3"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA3:Lio/dronefleet/mavlink/common/MavDataStream;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/common/MavDataStream;

    const/16 v10, 0x9

    const-string v11, "PROPULSION"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavDataStream;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->PROPULSION:Lio/dronefleet/mavlink/common/MavDataStream;

    const/16 v0, 0xa

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavDataStream;

    .line 10
    sget-object v11, Lio/dronefleet/mavlink/common/MavDataStream;->ALL:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v11, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->RAW_SENSORS:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->EXTENDED_STATUS:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->RC_CHANNELS:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->RAW_CONTROLLER:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->POSITION:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA1:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA2:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->EXTRA3:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavDataStream;->PROPULSION:Lio/dronefleet/mavlink/common/MavDataStream;

    aput-object v1, v0, v10

    sput-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->$VALUES:[Lio/dronefleet/mavlink/common/MavDataStream;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavDataStream;
    .locals 1

    .line 10
    const-class v0, Lio/dronefleet/mavlink/common/MavDataStream;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavDataStream;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavDataStream;
    .locals 1

    .line 10
    sget-object v0, Lio/dronefleet/mavlink/common/MavDataStream;->$VALUES:[Lio/dronefleet/mavlink/common/MavDataStream;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavDataStream;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavDataStream;

    return-object v0
.end method
