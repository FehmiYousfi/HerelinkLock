.class public final enum Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
.super Ljava/lang/Enum;
.source "RoverMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/RoverMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

.field public static final enum ACRO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum AUTO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum FOLLOW:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum GUIDED:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum HOLD:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum INITIALIZING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum LOITER:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MANUAL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum SIMPLE:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum SMART_RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum STEERING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v1, 0x0

    const-string v2, "MANUAL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->MANUAL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v2, 0x1

    const-string v3, "ACRO"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->ACRO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v3, 0x2

    const-string v4, "STEERING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->STEERING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v4, 0x3

    const-string v5, "HOLD"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->HOLD:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v5, 0x4

    const-string v6, "LOITER"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->LOITER:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v6, 0x5

    const-string v7, "FOLLOW"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->FOLLOW:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v7, 0x6

    const-string v8, "SIMPLE"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->SIMPLE:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/4 v8, 0x7

    const-string v9, "AUTO"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->AUTO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/16 v9, 0x8

    const-string v10, "RTL"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/16 v10, 0x9

    const-string v11, "SMART_RTL"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->SMART_RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/16 v11, 0xa

    const-string v12, "GUIDED"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->GUIDED:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/16 v12, 0xb

    const-string v13, "INITIALIZING"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->INITIALIZING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    .line 9
    sget-object v13, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->MANUAL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v13, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->ACRO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->STEERING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->HOLD:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->LOITER:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->FOLLOW:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->SIMPLE:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->AUTO:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->SMART_RTL:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->GUIDED:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->INITIALIZING:Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    aput-object v1, v0, v12

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/RoverMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/RoverMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/RoverMode;

    return-object v0
.end method
