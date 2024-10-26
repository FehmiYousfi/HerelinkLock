.class public final enum Lio/dronefleet/mavlink/common/MavFrame;
.super Ljava/lang/Enum;
.source "MavFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavFrame;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavFrame;

.field public static final enum BODY_FRD:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum BODY_NED:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BODY_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GLOBAL:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum GLOBAL_INT:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum GLOBAL_RELATIVE_ALT:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum GLOBAL_RELATIVE_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum GLOBAL_TERRAIN_ALT:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum GLOBAL_TERRAIN_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum LOCAL_ENU:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum LOCAL_FLU:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x15
    .end annotation
.end field

.field public static final enum LOCAL_FRD:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x14
    .end annotation
.end field

.field public static final enum LOCAL_NED:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum LOCAL_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum MISSION:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum RESERVED_13:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_14:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_15:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_16:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_17:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x11
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_18:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x12
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RESERVED_19:Lio/dronefleet/mavlink/common/MavFrame;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x13
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v1, 0x0

    const-string v2, "GLOBAL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL:Lio/dronefleet/mavlink/common/MavFrame;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v2, 0x1

    const-string v3, "LOCAL_NED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_NED:Lio/dronefleet/mavlink/common/MavFrame;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v3, 0x2

    const-string v4, "MISSION"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->MISSION:Lio/dronefleet/mavlink/common/MavFrame;

    .line 48
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v4, 0x3

    const-string v5, "GLOBAL_RELATIVE_ALT"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_RELATIVE_ALT:Lio/dronefleet/mavlink/common/MavFrame;

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v5, 0x4

    const-string v6, "LOCAL_ENU"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_ENU:Lio/dronefleet/mavlink/common/MavFrame;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v6, 0x5

    const-string v7, "GLOBAL_INT"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_INT:Lio/dronefleet/mavlink/common/MavFrame;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v7, 0x6

    const-string v8, "GLOBAL_RELATIVE_ALT_INT"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_RELATIVE_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v8, 0x7

    const-string v9, "LOCAL_OFFSET_NED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;

    .line 84
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v9, 0x8

    const-string v10, "BODY_NED"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->BODY_NED:Lio/dronefleet/mavlink/common/MavFrame;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v10, 0x9

    const-string v11, "BODY_OFFSET_NED"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->BODY_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;

    .line 101
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v11, 0xa

    const-string v12, "GLOBAL_TERRAIN_ALT"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_TERRAIN_ALT:Lio/dronefleet/mavlink/common/MavFrame;

    .line 109
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v12, 0xb

    const-string v13, "GLOBAL_TERRAIN_ALT_INT"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_TERRAIN_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;

    .line 116
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v13, 0xc

    const-string v14, "BODY_FRD"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->BODY_FRD:Lio/dronefleet/mavlink/common/MavFrame;

    .line 123
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v14, 0xd

    const-string v15, "RESERVED_13"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_13:Lio/dronefleet/mavlink/common/MavFrame;

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v15, 0xe

    const-string v14, "RESERVED_14"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_14:Lio/dronefleet/mavlink/common/MavFrame;

    .line 141
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "RESERVED_15"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_15:Lio/dronefleet/mavlink/common/MavFrame;

    .line 150
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "RESERVED_16"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_16:Lio/dronefleet/mavlink/common/MavFrame;

    .line 159
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "RESERVED_17"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_17:Lio/dronefleet/mavlink/common/MavFrame;

    .line 168
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "RESERVED_18"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_18:Lio/dronefleet/mavlink/common/MavFrame;

    .line 177
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "RESERVED_19"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_19:Lio/dronefleet/mavlink/common/MavFrame;

    .line 185
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "LOCAL_FRD"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_FRD:Lio/dronefleet/mavlink/common/MavFrame;

    .line 192
    new-instance v0, Lio/dronefleet/mavlink/common/MavFrame;

    const-string v14, "LOCAL_FLU"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_FLU:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v0, 0x16

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavFrame;

    .line 22
    sget-object v14, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_NED:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->MISSION:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_RELATIVE_ALT:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_ENU:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_INT:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_RELATIVE_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->BODY_NED:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->BODY_OFFSET_NED:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_TERRAIN_ALT:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->GLOBAL_TERRAIN_ALT_INT:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->BODY_FRD:Lio/dronefleet/mavlink/common/MavFrame;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_13:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_14:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_15:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_16:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_17:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_18:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->RESERVED_19:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_FRD:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavFrame;->LOCAL_FLU:Lio/dronefleet/mavlink/common/MavFrame;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavFrame;->$VALUES:[Lio/dronefleet/mavlink/common/MavFrame;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavFrame;
    .locals 1

    .line 22
    const-class v0, Lio/dronefleet/mavlink/common/MavFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavFrame;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavFrame;
    .locals 1

    .line 22
    sget-object v0, Lio/dronefleet/mavlink/common/MavFrame;->$VALUES:[Lio/dronefleet/mavlink/common/MavFrame;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavFrame;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavFrame;

    return-object v0
.end method
