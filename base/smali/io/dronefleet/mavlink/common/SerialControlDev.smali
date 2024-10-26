.class public final enum Lio/dronefleet/mavlink/common/SerialControlDev;
.super Ljava/lang/Enum;
.source "SerialControlDev.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/SerialControlDev;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/SerialControlDev;

.field public static final enum GPS1:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum GPS2:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL0:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x64
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL1:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x65
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL2:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x66
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL3:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x67
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL4:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x68
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL5:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x69
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL6:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6a
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL7:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6b
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL8:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6c
    .end annotation
.end field

.field public static final enum SERIAL_CONTROL_SERIAL9:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6d
    .end annotation
.end field

.field public static final enum SHELL:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum TELEM1:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum TELEM2:Lio/dronefleet/mavlink/common/SerialControlDev;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v1, 0x0

    const-string v2, "TELEM1"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->TELEM1:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v2, 0x1

    const-string v3, "TELEM2"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->TELEM2:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v3, 0x2

    const-string v4, "GPS1"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->GPS1:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v4, 0x3

    const-string v5, "GPS2"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->GPS2:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v5, 0x4

    const-string v6, "SHELL"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SHELL:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v6, 0x5

    const-string v7, "SERIAL_CONTROL_SERIAL0"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL0:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v7, 0x6

    const-string v8, "SERIAL_CONTROL_SERIAL1"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL1:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v8, 0x7

    const-string v9, "SERIAL_CONTROL_SERIAL2"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL2:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v9, 0x8

    const-string v10, "SERIAL_CONTROL_SERIAL3"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL3:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v10, 0x9

    const-string v11, "SERIAL_CONTROL_SERIAL4"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL4:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v11, 0xa

    const-string v12, "SERIAL_CONTROL_SERIAL5"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL5:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v12, 0xb

    const-string v13, "SERIAL_CONTROL_SERIAL6"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL6:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v13, 0xc

    const-string v14, "SERIAL_CONTROL_SERIAL7"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL7:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v14, 0xd

    const-string v15, "SERIAL_CONTROL_SERIAL8"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL8:Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 98
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v15, 0xe

    const-string v14, "SERIAL_CONTROL_SERIAL9"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/SerialControlDev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL9:Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v0, 0xf

    new-array v0, v0, [Lio/dronefleet/mavlink/common/SerialControlDev;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/common/SerialControlDev;->TELEM1:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->TELEM2:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->GPS1:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->GPS2:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SHELL:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL0:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL1:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL2:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL3:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL4:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL5:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL6:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL7:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL8:Lio/dronefleet/mavlink/common/SerialControlDev;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/SerialControlDev;->SERIAL_CONTROL_SERIAL9:Lio/dronefleet/mavlink/common/SerialControlDev;

    aput-object v1, v0, v15

    sput-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->$VALUES:[Lio/dronefleet/mavlink/common/SerialControlDev;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/SerialControlDev;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/SerialControlDev;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/SerialControlDev;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/SerialControlDev;->$VALUES:[Lio/dronefleet/mavlink/common/SerialControlDev;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/SerialControlDev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/SerialControlDev;

    return-object v0
.end method
