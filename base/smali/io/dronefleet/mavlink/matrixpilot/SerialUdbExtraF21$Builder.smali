.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAccelXOffset:I

.field private sueAccelYOffset:I

.field private sueAccelZOffset:I

.field private sueGyroXOffset:I

.field private sueGyroYOffset:I

.field private sueGyroZOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;
    .locals 9

    .line 285
    new-instance v8, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelXOffset:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelYOffset:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelZOffset:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroXOffset:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroYOffset:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroZOffset:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;-><init>(IIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$1;)V

    return-object v8
.end method

.method public final sueAccelXOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X accelerometer offset"
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 210
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelXOffset:I

    return-object p0
.end method

.method public final sueAccelYOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y accelerometer offset"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 224
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelYOffset:I

    return-object p0
.end method

.method public final sueAccelZOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z accelerometer offset"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueAccelZOffset:I

    return-object p0
.end method

.method public final sueGyroXOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X gyro offset"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 252
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroXOffset:I

    return-object p0
.end method

.method public final sueGyroYOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y gyro offset"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 266
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroYOffset:I

    return-object p0
.end method

.method public final sueGyroZOffset(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z gyro offset"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 280
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;->sueGyroZOffset:I

    return-object p0
.end method
