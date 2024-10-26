.class public final enum Lio/dronefleet/mavlink/slugs/SlugsMode;
.super Ljava/lang/Enum;
.source "SlugsMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/slugs/SlugsMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/slugs/SlugsMode;

.field public static final enum GROUNDED:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum ISR:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum LANDING:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum LIFTOFF:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum LINE_PATROL:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum LOST:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum MID_LEVEL:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum NONE:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum RETURNING:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum SELECTIVE_PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum WAYPOINT:Lio/dronefleet/mavlink/slugs/SlugsMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->NONE:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v2, 0x1

    const-string v3, "LIFTOFF"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->LIFTOFF:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v3, 0x2

    const-string v4, "PASSTHROUGH"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v4, 0x3

    const-string v5, "WAYPOINT"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->WAYPOINT:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v5, 0x4

    const-string v6, "MID_LEVEL"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->MID_LEVEL:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v6, 0x5

    const-string v7, "RETURNING"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->RETURNING:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v7, 0x6

    const-string v8, "LANDING"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->LANDING:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/4 v8, 0x7

    const-string v9, "LOST"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->LOST:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/16 v9, 0x8

    const-string v10, "SELECTIVE_PASSTHROUGH"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->SELECTIVE_PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/16 v10, 0x9

    const-string v11, "ISR"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->ISR:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/16 v11, 0xa

    const-string v12, "LINE_PATROL"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->LINE_PATROL:Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 82
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/16 v12, 0xb

    const-string v13, "GROUNDED"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/slugs/SlugsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->GROUNDED:Lio/dronefleet/mavlink/slugs/SlugsMode;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/dronefleet/mavlink/slugs/SlugsMode;

    .line 9
    sget-object v13, Lio/dronefleet/mavlink/slugs/SlugsMode;->NONE:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v13, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->LIFTOFF:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->WAYPOINT:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->MID_LEVEL:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->RETURNING:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->LANDING:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->LOST:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->SELECTIVE_PASSTHROUGH:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->ISR:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->LINE_PATROL:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsMode;->GROUNDED:Lio/dronefleet/mavlink/slugs/SlugsMode;

    aput-object v1, v0, v12

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->$VALUES:[Lio/dronefleet/mavlink/slugs/SlugsMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/slugs/SlugsMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/slugs/SlugsMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/slugs/SlugsMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/slugs/SlugsMode;->$VALUES:[Lio/dronefleet/mavlink/slugs/SlugsMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/slugs/SlugsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/slugs/SlugsMode;

    return-object v0
.end method
