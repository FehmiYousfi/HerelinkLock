.class public final Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
.super Ljava/lang/Object;
.source "ScaledImu3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ScaledImu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private temperature:I

.field private timeBootMs:J

.field private xacc:I

.field private xgyro:I

.field private xmag:I

.field private yacc:I

.field private ygyro:I

.field private ymag:I

.field private zacc:I

.field private zgyro:I

.field private zmag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ScaledImu3;
    .locals 15

    .line 478
    new-instance v14, Lio/dronefleet/mavlink/common/ScaledImu3;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xacc:I

    iget v4, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->yacc:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zacc:I

    iget v6, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xgyro:I

    iget v7, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->ygyro:I

    iget v8, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zgyro:I

    iget v9, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xmag:I

    iget v10, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->ymag:I

    iget v11, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zmag:I

    iget v12, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->temperature:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/ScaledImu3;-><init>(JIIIIIIIIIILio/dronefleet/mavlink/common/ScaledImu3$1;)V

    return-object v14
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature, 0: IMU does not\n                provide temperature values. If the IMU is at 0C it must send 1 (0.01C)."
        extension = true
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->temperature:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 330
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final xacc(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 344
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xacc:I

    return-object p0
.end method

.method public final xgyro(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around X axis"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 386
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xgyro:I

    return-object p0
.end method

.method public final xmag(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Magnetic field"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 428
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->xmag:I

    return-object p0
.end method

.method public final yacc(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 358
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->yacc:I

    return-object p0
.end method

.method public final ygyro(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Y axis"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 400
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->ygyro:I

    return-object p0
.end method

.method public final ymag(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Magnetic field"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 442
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->ymag:I

    return-object p0
.end method

.method public final zacc(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 372
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zacc:I

    return-object p0
.end method

.method public final zgyro(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Z axis"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 414
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zgyro:I

    return-object p0
.end method

.method public final zmag(I)Lio/dronefleet/mavlink/common/ScaledImu3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Magnetic field"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 456
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledImu3$Builder;->zmag:I

    return-object p0
.end method
