.class public final Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
.super Ljava/lang/Object;
.source "NavFilterBias.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ualberta/NavFilterBias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accel0:F

.field private accel1:F

.field private accel2:F

.field private gyro0:F

.field private gyro1:F

.field private gyro2:F

.field private usec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accel0(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[0]"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 239
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel0:F

    return-object p0
.end method

.method public final accel1(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[1]"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 252
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel1:F

    return-object p0
.end method

.method public final accel2(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[2]"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 265
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel2:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ualberta/NavFilterBias;
    .locals 10

    .line 309
    new-instance v9, Lio/dronefleet/mavlink/ualberta/NavFilterBias;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->usec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel0:F

    iget v3, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel1:F

    iget v4, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->accel2:F

    iget v5, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro0:F

    iget v6, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro1:F

    iget v7, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro2:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ualberta/NavFilterBias;-><init>(Ljava/math/BigInteger;FFFFFFLio/dronefleet/mavlink/ualberta/NavFilterBias$1;)V

    return-object v9
.end method

.method public final gyro0(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[0]"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro0:F

    return-object p0
.end method

.method public final gyro1(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[1]"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 291
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro1:F

    return-object p0
.end method

.method public final gyro2(F)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[2]"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->gyro2:F

    return-object p0
.end method

.method public final usec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (microseconds)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 226
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;->usec:Ljava/math/BigInteger;

    return-object p0
.end method
