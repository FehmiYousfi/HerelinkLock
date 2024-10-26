.class public final enum Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
.super Ljava/lang/Enum;
.source "MavlinkDataStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

.field public static final enum MAVLINK_DATA_STREAM_IMG_BMP:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MAVLINK_DATA_STREAM_IMG_JPEG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum MAVLINK_DATA_STREAM_IMG_PGM:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum MAVLINK_DATA_STREAM_IMG_PNG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MAVLINK_DATA_STREAM_IMG_RAW32U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MAVLINK_DATA_STREAM_IMG_RAW8U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v1, 0x0

    const-string v2, "MAVLINK_DATA_STREAM_IMG_JPEG"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_JPEG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v2, 0x1

    const-string v3, "MAVLINK_DATA_STREAM_IMG_BMP"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_BMP:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v3, 0x2

    const-string v4, "MAVLINK_DATA_STREAM_IMG_RAW8U"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_RAW8U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v4, 0x3

    const-string v5, "MAVLINK_DATA_STREAM_IMG_RAW32U"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_RAW32U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v5, 0x4

    const-string v6, "MAVLINK_DATA_STREAM_IMG_PGM"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_PGM:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v6, 0x5

    const-string v7, "MAVLINK_DATA_STREAM_IMG_PNG"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_PNG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    .line 9
    sget-object v7, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_JPEG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v7, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_BMP:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_RAW8U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_RAW32U:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_PGM:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->MAVLINK_DATA_STREAM_IMG_PNG:Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    aput-object v1, v0, v6

    sput-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->$VALUES:[Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->$VALUES:[Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavlinkDataStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    return-object v0
.end method
