.class public final enum Lio/dronefleet/mavlink/common/AisFlags;
.super Ljava/lang/Enum;
.source "AisFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/AisFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/AisFlags;

.field public static final enum HIGH_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum LARGE_BOW_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum LARGE_PORT_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum LARGE_STARBOARD_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum LARGE_STERN_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum POSITION_ACCURACY:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum TURN_RATE_SIGN_ONLY:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum VALID_COG:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum VALID_DIMENSIONS:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum VALID_NAME:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000
    .end annotation
.end field

.field public static final enum VALID_TURN_RATE:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum VALID_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 15
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v1, 0x0

    const-string v2, "POSITION_ACCURACY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->POSITION_ACCURACY:Lio/dronefleet/mavlink/common/AisFlags;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v2, 0x1

    const-string v3, "VALID_COG"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_COG:Lio/dronefleet/mavlink/common/AisFlags;

    .line 27
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v3, 0x2

    const-string v4, "VALID_VELOCITY"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v4, 0x3

    const-string v5, "HIGH_VELOCITY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->HIGH_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v5, 0x4

    const-string v6, "VALID_TURN_RATE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_TURN_RATE:Lio/dronefleet/mavlink/common/AisFlags;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v6, 0x5

    const-string v7, "TURN_RATE_SIGN_ONLY"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->TURN_RATE_SIGN_ONLY:Lio/dronefleet/mavlink/common/AisFlags;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v7, 0x6

    const-string v8, "VALID_DIMENSIONS"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_DIMENSIONS:Lio/dronefleet/mavlink/common/AisFlags;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v8, 0x7

    const-string v9, "LARGE_BOW_DIMENSION"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_BOW_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v9, 0x8

    const-string v10, "LARGE_STERN_DIMENSION"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_STERN_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v10, 0x9

    const-string v11, "LARGE_PORT_DIMENSION"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_PORT_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v11, 0xa

    const-string v12, "LARGE_STARBOARD_DIMENSION"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_STARBOARD_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    .line 82
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v12, 0xb

    const-string v13, "VALID_CALLSIGN"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AisFlags;

    .line 88
    new-instance v0, Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v13, 0xc

    const-string v14, "VALID_NAME"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/AisFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->VALID_NAME:Lio/dronefleet/mavlink/common/AisFlags;

    const/16 v0, 0xd

    new-array v0, v0, [Lio/dronefleet/mavlink/common/AisFlags;

    .line 10
    sget-object v14, Lio/dronefleet/mavlink/common/AisFlags;->POSITION_ACCURACY:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_COG:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->HIGH_VELOCITY:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_TURN_RATE:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->TURN_RATE_SIGN_ONLY:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_DIMENSIONS:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_BOW_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_STERN_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_PORT_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->LARGE_STARBOARD_DIMENSION:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_CALLSIGN:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/AisFlags;->VALID_NAME:Lio/dronefleet/mavlink/common/AisFlags;

    aput-object v1, v0, v13

    sput-object v0, Lio/dronefleet/mavlink/common/AisFlags;->$VALUES:[Lio/dronefleet/mavlink/common/AisFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AisFlags;
    .locals 1

    .line 10
    const-class v0, Lio/dronefleet/mavlink/common/AisFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/AisFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/AisFlags;
    .locals 1

    .line 10
    sget-object v0, Lio/dronefleet/mavlink/common/AisFlags;->$VALUES:[Lio/dronefleet/mavlink/common/AisFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/AisFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/AisFlags;

    return-object v0
.end method
