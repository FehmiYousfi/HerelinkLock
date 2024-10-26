.class public final enum Lio/dronefleet/mavlink/common/CameraCapFlags;
.super Ljava/lang/Enum;
.source "CameraCapFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/CameraCapFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/CameraCapFlags;

.field public static final enum CAN_CAPTURE_IMAGE_IN_VIDEO_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum CAN_CAPTURE_VIDEO_IN_IMAGE_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum CAPTURE_IMAGE:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum CAPTURE_VIDEO:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum HAS_BASIC_FOCUS:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum HAS_BASIC_ZOOM:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum HAS_IMAGE_SURVEY_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum HAS_MODES:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum HAS_TRACKING_GEO_STATUS:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum HAS_TRACKING_POINT:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum HAS_TRACKING_RECTANGLE:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum HAS_VIDEO_STREAM:Lio/dronefleet/mavlink/common/CameraCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v1, 0x0

    const-string v2, "CAPTURE_VIDEO"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAPTURE_VIDEO:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v2, 0x1

    const-string v3, "CAPTURE_IMAGE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAPTURE_IMAGE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v3, 0x2

    const-string v4, "HAS_MODES"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_MODES:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v4, 0x3

    const-string v5, "CAN_CAPTURE_IMAGE_IN_VIDEO_MODE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAN_CAPTURE_IMAGE_IN_VIDEO_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v5, 0x4

    const-string v6, "CAN_CAPTURE_VIDEO_IN_IMAGE_MODE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAN_CAPTURE_VIDEO_IN_IMAGE_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v6, 0x5

    const-string v7, "HAS_IMAGE_SURVEY_MODE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_IMAGE_SURVEY_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v7, 0x6

    const-string v8, "HAS_BASIC_ZOOM"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_BASIC_ZOOM:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v8, 0x7

    const-string v9, "HAS_BASIC_FOCUS"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_BASIC_FOCUS:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/16 v9, 0x8

    const-string v10, "HAS_VIDEO_STREAM"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_VIDEO_STREAM:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/16 v10, 0x9

    const-string v11, "HAS_TRACKING_POINT"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_POINT:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/16 v11, 0xa

    const-string v12, "HAS_TRACKING_RECTANGLE"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_RECTANGLE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 81
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/16 v12, 0xb

    const-string v13, "HAS_TRACKING_GEO_STATUS"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/CameraCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_GEO_STATUS:Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/dronefleet/mavlink/common/CameraCapFlags;

    .line 9
    sget-object v13, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAPTURE_VIDEO:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v13, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAPTURE_IMAGE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_MODES:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAN_CAPTURE_IMAGE_IN_VIDEO_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->CAN_CAPTURE_VIDEO_IN_IMAGE_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_IMAGE_SURVEY_MODE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_BASIC_ZOOM:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_BASIC_FOCUS:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_VIDEO_STREAM:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_POINT:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_RECTANGLE:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/CameraCapFlags;->HAS_TRACKING_GEO_STATUS:Lio/dronefleet/mavlink/common/CameraCapFlags;

    aput-object v1, v0, v12

    sput-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->$VALUES:[Lio/dronefleet/mavlink/common/CameraCapFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/CameraCapFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/CameraCapFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/CameraCapFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/CameraCapFlags;->$VALUES:[Lio/dronefleet/mavlink/common/CameraCapFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/CameraCapFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/CameraCapFlags;

    return-object v0
.end method
