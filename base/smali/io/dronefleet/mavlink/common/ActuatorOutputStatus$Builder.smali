.class public final Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
.super Ljava/lang/Object;
.source "ActuatorOutputStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ActuatorOutputStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private active:J

.field private actuator:[F

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final active(J)Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Active outputs"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 154
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->active:J

    return-object p0
.end method

.method public final actuator([F)Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Servo / motor output array values. Zero values\n                indicate unused channels."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 169
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->actuator:[F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/ActuatorOutputStatus;
    .locals 7

    .line 174
    new-instance v6, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->active:J

    iget-object v4, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->actuator:[F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;-><init>(Ljava/math/BigInteger;J[FLio/dronefleet/mavlink/common/ActuatorOutputStatus$1;)V

    return-object v6
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 141
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
