.class public final Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
.super Ljava/lang/Object;
.source "SensMppt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensMppt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mppt1Amp:F

.field private mppt1Pwm:I

.field private mppt1Status:I

.field private mppt1Volt:F

.field private mppt2Amp:F

.field private mppt2Pwm:I

.field private mppt2Status:I

.field private mppt2Volt:F

.field private mppt3Amp:F

.field private mppt3Pwm:I

.field private mppt3Status:I

.field private mppt3Volt:F

.field private mpptTimestamp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/SensMppt;
    .locals 17

    move-object/from16 v0, p0

    .line 521
    new-instance v16, Lio/dronefleet/mavlink/asluav/SensMppt;

    iget-object v2, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mpptTimestamp:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Volt:F

    iget v4, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Amp:F

    iget v5, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Pwm:I

    iget v6, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Status:I

    iget v7, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Volt:F

    iget v8, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Amp:F

    iget v9, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Pwm:I

    iget v10, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Status:I

    iget v11, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Volt:F

    iget v12, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Amp:F

    iget v13, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Pwm:I

    iget v14, v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Status:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/asluav/SensMppt;-><init>(Ljava/math/BigInteger;FFIIFFIIFFIILio/dronefleet/mavlink/asluav/SensMppt$1;)V

    return-object v16
.end method

.method public final mppt1Amp(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 current"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 386
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Amp:F

    return-object p0
.end method

.method public final mppt1Pwm(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 pwm"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 399
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Pwm:I

    return-object p0
.end method

.method public final mppt1Status(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 status"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 412
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Status:I

    return-object p0
.end method

.method public final mppt1Volt(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 voltage"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt1Volt:F

    return-object p0
.end method

.method public final mppt2Amp(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 current"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 438
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Amp:F

    return-object p0
.end method

.method public final mppt2Pwm(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 pwm"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 451
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Pwm:I

    return-object p0
.end method

.method public final mppt2Status(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 status"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 464
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Status:I

    return-object p0
.end method

.method public final mppt2Volt(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 voltage"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 425
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt2Volt:F

    return-object p0
.end method

.method public final mppt3Amp(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 current"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 490
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Amp:F

    return-object p0
.end method

.method public final mppt3Pwm(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 pwm"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 503
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Pwm:I

    return-object p0
.end method

.method public final mppt3Status(I)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 status"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 516
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Status:I

    return-object p0
.end method

.method public final mppt3Volt(F)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 voltage"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 477
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mppt3Volt:F

    return-object p0
.end method

.method public final mpptTimestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT last timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 360
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;->mpptTimestamp:Ljava/math/BigInteger;

    return-object p0
.end method
