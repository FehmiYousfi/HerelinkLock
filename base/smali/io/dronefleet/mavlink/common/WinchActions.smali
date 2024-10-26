.class public final enum Lio/dronefleet/mavlink/common/WinchActions;
.super Ljava/lang/Enum;
.source "WinchActions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/WinchActions;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/WinchActions;

.field public static final enum WINCH_ABANDON_LINE:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum WINCH_DELIVER:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum WINCH_HOLD:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum WINCH_LOAD_LINE:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum WINCH_LOCK:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum WINCH_RATE_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum WINCH_RELATIVE_LENGTH_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum WINCH_RELAXED:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum WINCH_RETRACT:Lio/dronefleet/mavlink/common/WinchActions;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v1, 0x0

    const-string v2, "WINCH_RELAXED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RELAXED:Lio/dronefleet/mavlink/common/WinchActions;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v2, 0x1

    const-string v3, "WINCH_RELATIVE_LENGTH_CONTROL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RELATIVE_LENGTH_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v3, 0x2

    const-string v4, "WINCH_RATE_CONTROL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RATE_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v4, 0x3

    const-string v5, "WINCH_LOCK"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_LOCK:Lio/dronefleet/mavlink/common/WinchActions;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v5, 0x4

    const-string v6, "WINCH_DELIVER"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_DELIVER:Lio/dronefleet/mavlink/common/WinchActions;

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v6, 0x5

    const-string v7, "WINCH_HOLD"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_HOLD:Lio/dronefleet/mavlink/common/WinchActions;

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v7, 0x6

    const-string v8, "WINCH_RETRACT"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RETRACT:Lio/dronefleet/mavlink/common/WinchActions;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/4 v8, 0x7

    const-string v9, "WINCH_LOAD_LINE"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_LOAD_LINE:Lio/dronefleet/mavlink/common/WinchActions;

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/WinchActions;

    const/16 v9, 0x8

    const-string v10, "WINCH_ABANDON_LINE"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/WinchActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_ABANDON_LINE:Lio/dronefleet/mavlink/common/WinchActions;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/dronefleet/mavlink/common/WinchActions;

    .line 9
    sget-object v10, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RELAXED:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v10, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RELATIVE_LENGTH_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RATE_CONTROL:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_LOCK:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_DELIVER:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_HOLD:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_RETRACT:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_LOAD_LINE:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/WinchActions;->WINCH_ABANDON_LINE:Lio/dronefleet/mavlink/common/WinchActions;

    aput-object v1, v0, v9

    sput-object v0, Lio/dronefleet/mavlink/common/WinchActions;->$VALUES:[Lio/dronefleet/mavlink/common/WinchActions;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/WinchActions;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/WinchActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/WinchActions;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/WinchActions;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/WinchActions;->$VALUES:[Lio/dronefleet/mavlink/common/WinchActions;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/WinchActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/WinchActions;

    return-object v0
.end method
