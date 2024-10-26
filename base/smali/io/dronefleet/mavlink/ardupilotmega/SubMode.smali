.class public final enum Lio/dronefleet/mavlink/ardupilotmega/SubMode;
.super Ljava/lang/Enum;
.source "SubMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/SubMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/SubMode;

.field public static final enum ACRO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum ALT_HOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum AUTO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum CIRCLE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum GUIDED:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum MANUAL:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x13
    .end annotation
.end field

.field public static final enum POSHOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum STABILIZE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum SURFACE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v1, 0x0

    const-string v2, "STABILIZE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->STABILIZE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v2, 0x1

    const-string v3, "ACRO"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->ACRO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v3, 0x2

    const-string v4, "ALT_HOLD"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->ALT_HOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v4, 0x3

    const-string v5, "AUTO"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->AUTO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v5, 0x4

    const-string v6, "GUIDED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->GUIDED:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v6, 0x5

    const-string v7, "CIRCLE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->CIRCLE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v7, 0x6

    const-string v8, "SURFACE"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->SURFACE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/4 v8, 0x7

    const-string v9, "POSHOLD"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->POSHOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/16 v9, 0x8

    const-string v10, "MANUAL"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/ardupilotmega/SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->MANUAL:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    .line 9
    sget-object v10, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->STABILIZE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v10, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->ACRO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->ALT_HOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->AUTO:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->GUIDED:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->CIRCLE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->SURFACE:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->POSHOLD:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->MANUAL:Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    aput-object v1, v0, v9

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/SubMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/SubMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/SubMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/SubMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/SubMode;

    return-object v0
.end method
