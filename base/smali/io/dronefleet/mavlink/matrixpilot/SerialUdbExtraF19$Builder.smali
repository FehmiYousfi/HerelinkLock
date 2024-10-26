.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAileronOutputChannel:I

.field private sueAileronReversed:I

.field private sueElevatorOutputChannel:I

.field private sueElevatorReversed:I

.field private sueRudderOutputChannel:I

.field private sueRudderReversed:I

.field private sueThrottleOutputChannel:I

.field private sueThrottleReversed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19;
    .locals 11

    .line 344
    new-instance v10, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueAileronOutputChannel:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueAileronReversed:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueElevatorOutputChannel:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueElevatorReversed:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueThrottleOutputChannel:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueThrottleReversed:I

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueRudderOutputChannel:I

    iget v8, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueRudderReversed:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19;-><init>(IIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$1;)V

    return-object v10
.end method

.method public final sueAileronOutputChannel(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE aileron output channel"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 248
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueAileronOutputChannel:I

    return-object p0
.end method

.method public final sueAileronReversed(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE aileron reversed"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 261
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueAileronReversed:I

    return-object p0
.end method

.method public final sueElevatorOutputChannel(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE elevator output channel"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 274
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueElevatorOutputChannel:I

    return-object p0
.end method

.method public final sueElevatorReversed(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE elevator reversed"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 287
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueElevatorReversed:I

    return-object p0
.end method

.method public final sueRudderOutputChannel(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE rudder output channel"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 326
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueRudderOutputChannel:I

    return-object p0
.end method

.method public final sueRudderReversed(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE rudder reversed"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueRudderReversed:I

    return-object p0
.end method

.method public final sueThrottleOutputChannel(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE throttle output channel"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 300
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueThrottleOutputChannel:I

    return-object p0
.end method

.method public final sueThrottleReversed(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE throttle reversed"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF19$Builder;->sueThrottleReversed:I

    return-object p0
.end method
