.class public final enum Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
.super Ljava/lang/Enum;
.source "ControlSurfaceFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

.field public static final enum LEFT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum LEFT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum LEFT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum RIGHT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum RIGHT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum RIGHT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum RUDDER:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum THROTTLE:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v1, 0x0

    const-string v2, "THROTTLE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->THROTTLE:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v2, 0x1

    const-string v3, "LEFT_AILERON"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v3, 0x2

    const-string v4, "RIGHT_AILERON"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v4, 0x3

    const-string v5, "RUDDER"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RUDDER:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v5, 0x4

    const-string v6, "LEFT_ELEVATOR"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v6, 0x5

    const-string v7, "RIGHT_ELEVATOR"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v7, 0x6

    const-string v8, "LEFT_FLAP"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v8, 0x7

    const-string v9, "RIGHT_FLAP"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    .line 11
    sget-object v9, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->THROTTLE:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_AILERON:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RUDDER:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_ELEVATOR:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->LEFT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->RIGHT_FLAP:Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->$VALUES:[Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->$VALUES:[Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    return-object v0
.end method
