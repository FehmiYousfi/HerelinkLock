.class public final Lio/dronefleet/mavlink/common/RawImu$Builder;
.super Ljava/lang/Object;
.source "RawImu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RawImu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:I

.field private temperature:I

.field private timeUsec:Ljava/math/BigInteger;

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

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RawImu;
    .locals 15

    .line 526
    new-instance v14, Lio/dronefleet/mavlink/common/RawImu;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xacc:I

    iget v3, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->yacc:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zacc:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xgyro:I

    iget v6, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->ygyro:I

    iget v7, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zgyro:I

    iget v8, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xmag:I

    iget v9, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->ymag:I

    iget v10, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zmag:I

    iget v11, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->id:I

    iget v12, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->temperature:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/RawImu;-><init>(Ljava/math/BigInteger;IIIIIIIIIIILio/dronefleet/mavlink/common/RawImu$1;)V

    return-object v14
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Id. Ids are numbered from 0 and map to\n                IMUs numbered from 1 (e.g. IMU1 will have a message with id=0)"
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 504
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->id:I

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature, 0: IMU does not\n                provide temperature values. If the IMU is at 0C it must send 1 (0.01C)."
        extension = true
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 521
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->temperature:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 362
    iput-object p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final xacc(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration (raw)"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 376
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xacc:I

    return-object p0
.end method

.method public final xgyro(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around X axis (raw)"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 418
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xgyro:I

    return-object p0
.end method

.method public final xmag(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Magnetic field (raw)"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 460
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->xmag:I

    return-object p0
.end method

.method public final yacc(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration (raw)"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 390
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->yacc:I

    return-object p0
.end method

.method public final ygyro(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Y axis (raw)"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 432
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->ygyro:I

    return-object p0
.end method

.method public final ymag(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Magnetic field (raw)"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 474
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->ymag:I

    return-object p0
.end method

.method public final zacc(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration (raw)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 404
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zacc:I

    return-object p0
.end method

.method public final zgyro(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Z axis (raw)"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 446
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zgyro:I

    return-object p0
.end method

.method public final zmag(I)Lio/dronefleet/mavlink/common/RawImu$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Magnetic field (raw)"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 488
    iput p1, p0, Lio/dronefleet/mavlink/common/RawImu$Builder;->zmag:I

    return-object p0
.end method
