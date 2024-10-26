.class public final Lio/dronefleet/mavlink/common/FlightInformation$Builder;
.super Ljava/lang/Object;
.source "FlightInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/FlightInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private armingTimeUtc:Ljava/math/BigInteger;

.field private flightUuid:Ljava/math/BigInteger;

.field private takeoffTimeUtc:Ljava/math/BigInteger;

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final armingTimeUtc(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp at arming (time since\n                UNIX epoch) in UTC, 0 for unknown"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 179
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->armingTimeUtc:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/FlightInformation;
    .locals 8

    .line 212
    new-instance v7, Lio/dronefleet/mavlink/common/FlightInformation;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->armingTimeUtc:Ljava/math/BigInteger;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->takeoffTimeUtc:Ljava/math/BigInteger;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->flightUuid:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/FlightInformation;-><init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/dronefleet/mavlink/common/FlightInformation$1;)V

    return-object v7
.end method

.method public final flightUuid(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Universally unique identifier (UUID) of\n                flight, should correspond to name of log files"
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 207
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->flightUuid:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final takeoffTimeUtc(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp at takeoff (time\n                since UNIX epoch) in UTC, 0 for unknown"
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 193
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->takeoffTimeUtc:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 165
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;->timeBootMs:J

    return-object p0
.end method
