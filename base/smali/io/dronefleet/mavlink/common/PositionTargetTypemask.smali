.class public final enum Lio/dronefleet/mavlink/common/PositionTargetTypemask;
.super Ljava/lang/Enum;
.source "PositionTargetTypemask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/PositionTargetTypemask;

.field public static final enum AX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum AY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum AZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum FORCE_SET:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum VX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum VY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum VZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum X_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum YAW_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum Y_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum Z_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 17
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v1, 0x0

    const-string v2, "X_IGNORE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->X_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 23
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v2, 0x1

    const-string v3, "Y_IGNORE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->Y_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 29
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v3, 0x2

    const-string v4, "Z_IGNORE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->Z_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 35
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v4, 0x3

    const-string v5, "VX_IGNORE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 41
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v5, 0x4

    const-string v6, "VY_IGNORE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v6, 0x5

    const-string v7, "VZ_IGNORE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 53
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v7, 0x6

    const-string v8, "AX_IGNORE"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 59
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v8, 0x7

    const-string v9, "AY_IGNORE"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 65
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/16 v9, 0x8

    const-string v10, "AZ_IGNORE"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 71
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/16 v10, 0x9

    const-string v11, "FORCE_SET"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->FORCE_SET:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 77
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/16 v11, 0xa

    const-string v12, "YAW_IGNORE"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->YAW_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 83
    new-instance v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/16 v12, 0xb

    const-string v13, "YAW_RATE_IGNORE"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/PositionTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    .line 12
    sget-object v13, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->X_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v13, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->Y_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->Z_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->VZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AX_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AY_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->AZ_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->FORCE_SET:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->YAW_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    aput-object v1, v0, v12

    sput-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->$VALUES:[Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .locals 1

    .line 12
    const-class v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/PositionTargetTypemask;
    .locals 1

    .line 12
    sget-object v0, Lio/dronefleet/mavlink/common/PositionTargetTypemask;->$VALUES:[Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/PositionTargetTypemask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    return-object v0
.end method
