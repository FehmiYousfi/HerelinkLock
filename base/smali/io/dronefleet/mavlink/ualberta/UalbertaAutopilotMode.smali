.class public final enum Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
.super Ljava/lang/Enum;
.source "UalbertaAutopilotMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

.field public static final enum MODE_AUTO_PID_ATT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MODE_AUTO_PID_POS:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MODE_AUTO_PID_VEL:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum MODE_MANUAL_DIRECT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MODE_MANUAL_SCALED:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v1, 0x0

    const-string v2, "MODE_MANUAL_DIRECT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_MANUAL_DIRECT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v2, 0x1

    const-string v3, "MODE_MANUAL_SCALED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_MANUAL_SCALED:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v3, 0x2

    const-string v4, "MODE_AUTO_PID_ATT"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_ATT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v4, 0x3

    const-string v5, "MODE_AUTO_PID_VEL"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_VEL:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v5, 0x4

    const-string v6, "MODE_AUTO_PID_POS"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_POS:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    .line 9
    sget-object v6, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_MANUAL_DIRECT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_MANUAL_SCALED:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_ATT:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_VEL:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->MODE_AUTO_PID_POS:Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->$VALUES:[Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->$VALUES:[Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ualberta/UalbertaAutopilotMode;

    return-object v0
.end method
