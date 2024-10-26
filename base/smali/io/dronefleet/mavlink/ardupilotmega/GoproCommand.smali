.class public final enum Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
.super Ljava/lang/Enum;
.source "GoproCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

.field public static final enum BATTERY:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum CAPTURE_MODE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum CHARGING:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum LOW_LIGHT:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum MODEL:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum PHOTO_BURST_RATE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum PHOTO_RESOLUTION:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum POWER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum PROTUNE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum PROTUNE_COLOUR:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum PROTUNE_EXPOSURE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation
.end field

.field public static final enum PROTUNE_GAIN:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum PROTUNE_SHARPNESS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field

.field public static final enum PROTUNE_WHITE_BALANCE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum SHUTTER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum TIME:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum VIDEO_SETTINGS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v1, 0x0

    const-string v2, "POWER"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->POWER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v2, 0x1

    const-string v3, "CAPTURE_MODE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->CAPTURE_MODE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v3, 0x2

    const-string v4, "SHUTTER"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->SHUTTER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v4, 0x3

    const-string v5, "BATTERY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->BATTERY:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v5, 0x4

    const-string v6, "MODEL"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->MODEL:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v6, 0x5

    const-string v7, "VIDEO_SETTINGS"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->VIDEO_SETTINGS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v7, 0x6

    const-string v8, "LOW_LIGHT"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->LOW_LIGHT:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v8, 0x7

    const-string v9, "PHOTO_RESOLUTION"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PHOTO_RESOLUTION:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v9, 0x8

    const-string v10, "PHOTO_BURST_RATE"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PHOTO_BURST_RATE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v10, 0x9

    const-string v11, "PROTUNE"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v11, 0xa

    const-string v12, "PROTUNE_WHITE_BALANCE"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_WHITE_BALANCE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v12, 0xb

    const-string v13, "PROTUNE_COLOUR"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_COLOUR:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v13, 0xc

    const-string v14, "PROTUNE_GAIN"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_GAIN:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v14, 0xd

    const-string v15, "PROTUNE_SHARPNESS"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_SHARPNESS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 98
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v15, 0xe

    const-string v14, "PROTUNE_EXPOSURE"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_EXPOSURE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 104
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const-string v14, "TIME"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->TIME:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 110
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const-string v14, "CHARGING"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->CHARGING:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v0, 0x11

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->POWER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->CAPTURE_MODE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->SHUTTER:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->BATTERY:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->MODEL:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->VIDEO_SETTINGS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->LOW_LIGHT:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PHOTO_RESOLUTION:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PHOTO_BURST_RATE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_WHITE_BALANCE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_COLOUR:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_GAIN:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_SHARPNESS:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->PROTUNE_EXPOSURE:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->TIME:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->CHARGING:Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    return-object v0
.end method
