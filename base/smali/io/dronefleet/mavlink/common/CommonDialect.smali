.class public final Lio/dronefleet/mavlink/common/CommonDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "CommonDialect.java"


# static fields
.field private static final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private static final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lio/dronefleet/mavlink/MavlinkDialect;

    .line 17
    new-instance v2, Lio/dronefleet/mavlink/minimal/MinimalDialect;

    invoke-direct {v2}, Lio/dronefleet/mavlink/minimal/MinimalDialect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/dronefleet/mavlink/common/CommonDialect;->dependencies:Ljava/util/List;

    .line 23
    new-instance v1, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    invoke-direct {v1}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v2, Lio/dronefleet/mavlink/common/SysStatus;

    invoke-virtual {v1, v0, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SystemTime;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Ping;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ChangeOperatorControl;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AuthKey;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetMode;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x14

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamRequestRead;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x15

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamRequestList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x16

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamValue;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x17

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamSet;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x18

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsRawInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x19

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledImu;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RawImu;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RawPressure;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1d

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledPressure;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Attitude;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x1f

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AttitudeQuaternion;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x20

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LocalPositionNed;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x21

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GlobalPositionInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x22

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RcChannelsScaled;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x23

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RcChannelsRaw;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x24

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ServoOutputRaw;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x25

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionRequestPartialList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x26

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionWritePartialList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x27

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionItem;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x28

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionRequest;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x29

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionSetCurrent;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionCurrent;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionRequestList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionCount;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionClearAll;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionItemReached;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionAck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x30

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x31

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x32

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamMapRc;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x33

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionRequestInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x36

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x37

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SafetyAllowedArea;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/NavControllerOutput;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x40

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LocalPositionNedCov;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x41

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RcChannels;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x42

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RequestDataStream;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x43

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/DataStream;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x45

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ManualControl;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x46

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RcChannelsOverride;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x49

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MissionItemInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x4a

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/VfrHud;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x4b

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CommandInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x4c

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CommandLong;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x4d

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CommandAck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x51

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ManualSetpoint;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x52

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetAttitudeTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x53

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AttitudeTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x54

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x55

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/PositionTargetLocalNed;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x56

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x57

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x59

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilState;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilControls;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilRcInputsRaw;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilActuatorControls;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x64

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpticalFlow;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x65

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x66

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/VisionPositionEstimate;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x67

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x68

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ViconPositionEstimate;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x69

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HighresImu;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6a

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpticalFlowRad;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6b

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilSensor;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6c

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SimState;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6d

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RadioStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6e

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/FileTransferProtocol;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x6f

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Timesync;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x70

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CameraTrigger;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x71

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilGps;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x72

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilOpticalFlow;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x73

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HilStateQuaternion;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x74

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledImu2;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x75

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogRequestList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x76

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogEntry;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x77

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogRequestData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x78

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x79

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogErase;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7a

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LogRequestEnd;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsInjectData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Gps2Raw;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/PowerStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7e

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SerialControl;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x7f

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsRtk;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x80

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Gps2Rtk;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x81

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledImu3;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x82

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x83

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/EncapsulatedData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x84

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/DistanceSensor;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x85

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/TerrainRequest;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x86

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/TerrainData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x87

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/TerrainCheck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x88

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/TerrainReport;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x89

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledPressure2;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8a

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AttPosMocap;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8b

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetActuatorControlTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8c

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ActuatorControlTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8d

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Altitude;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8e

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ResourceRequest;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x8f

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ScaledPressure3;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x90

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/FollowTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x92

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ControlSystemState;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x93

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/BatteryStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x94

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AutopilotVersion;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x95

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LandingTarget;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xa2

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/FenceStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc0

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MagCalReport;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xe1

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/EfiStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xe6

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/EstimatorStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xe7

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/WindCov;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xe8

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsInput;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xe9

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GpsRtcmData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xea

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HighLatency;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xeb

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HighLatency2;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf1

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Vibration;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf2

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HomePosition;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf3

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetHomePosition;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf4

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MessageInterval;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf5

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ExtendedSysState;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf6

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AdsbVehicle;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf7

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Collision;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf8

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/V2Extension;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xf9

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MemoryVect;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xfa

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/DebugVect;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xfb

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/NamedValueFloat;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xfc

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/NamedValueInt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xfd

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Statustext;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xfe

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Debug;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x100

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SetupSigning;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x101

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ButtonChange;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x102

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/PlayTune;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x103

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CameraInformation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x104

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x105

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/StorageInformation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x106

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CameraCaptureStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x107

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CameraImageCaptured;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x108

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/FlightInformation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x109

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/MountOrientation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x10a

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LoggingData;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x10b

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LoggingDataAcked;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x10c

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/LoggingAck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x10d

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/VideoStreamInformation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x10e

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/VideoStreamStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x11b

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x11c

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x11d

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x11e

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x12b

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/WifiConfigAp;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x12d

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/AisVessel;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x136

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/UavcanNodeStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x137

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/UavcanNodeInfo;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x140

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamExtRequestRead;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x141

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamExtRequestList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x142

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamExtValue;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x143

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamExtSet;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x144

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ParamExtAck;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x14a

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ObstacleDistance;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x14b

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Odometry;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x14f

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/IsbdLinkStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x153

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/RawRpm;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x154

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/UtmGlobalPosition;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x15e

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/DebugFloatArray;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x172

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/SmartBatteryInfo;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x175

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/GeneratorStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x177

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x181

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/Tunnel;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x182

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CanFrame;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x183

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CanfdFrame;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x184

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/CanFilterModify;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x2328

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/WheelDistance;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x232d

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/WinchStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3264

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3265

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3266

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3267

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3268

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3269

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3276

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3273

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3277

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0x3278

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/common/HygrometerSensor;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/common/CommonDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 219
    sget-object v0, Lio/dronefleet/mavlink/common/CommonDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/common/CommonDialect;->messages:Ljava/util/Map;

    const-string v2, "common"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
