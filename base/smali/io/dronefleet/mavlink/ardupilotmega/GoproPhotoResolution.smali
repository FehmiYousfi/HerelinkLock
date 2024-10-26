.class public final enum Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
.super Ljava/lang/Enum;
.source "GoproPhotoResolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

.field public static final enum _10MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum _12MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum _5MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum _7MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum _7MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v1, 0x0

    const-string v2, "_5MP_MEDIUM"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_5MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v2, 0x1

    const-string v3, "_7MP_MEDIUM"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_7MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v3, 0x2

    const-string v4, "_7MP_WIDE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_7MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v4, 0x3

    const-string v5, "_10MP_WIDE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_10MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v5, 0x4

    const-string v6, "_12MP_WIDE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_12MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    .line 9
    sget-object v6, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_5MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_7MP_MEDIUM:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_7MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_10MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->_12MP_WIDE:Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproPhotoResolution;

    return-object v0
.end method
