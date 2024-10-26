.class public final Lio/dronefleet/mavlink/common/Vibration$Builder;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clipping0:J

.field private clipping1:J

.field private clipping2:J

.field private timeUsec:Ljava/math/BigInteger;

.field private vibrationX:F

.field private vibrationY:F

.field private vibrationZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Vibration;
    .locals 13

    .line 315
    new-instance v12, Lio/dronefleet/mavlink/common/Vibration;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationX:F

    iget v3, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationY:F

    iget v4, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationZ:F

    iget-wide v5, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping0:J

    iget-wide v7, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping1:J

    iget-wide v9, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping2:J

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/Vibration;-><init>(Ljava/math/BigInteger;FFFJJJLio/dronefleet/mavlink/common/Vibration$1;)V

    return-object v12
.end method

.method public final clipping0(J)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "first accelerometer clipping count"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 284
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping0:J

    return-object p0
.end method

.method public final clipping1(J)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "second accelerometer clipping count"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 297
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping1:J

    return-object p0
.end method

.method public final clipping2(J)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "third accelerometer clipping count"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 310
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->clipping2:J

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 232
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vibrationX(F)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vibration levels on X-axis"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationX:F

    return-object p0
.end method

.method public final vibrationY(F)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vibration levels on Y-axis"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 258
    iput p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationY:F

    return-object p0
.end method

.method public final vibrationZ(F)Lio/dronefleet/mavlink/common/Vibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vibration levels on Z-axis"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 271
    iput p1, p0, Lio/dronefleet/mavlink/common/Vibration$Builder;->vibrationZ:F

    return-object p0
.end method
