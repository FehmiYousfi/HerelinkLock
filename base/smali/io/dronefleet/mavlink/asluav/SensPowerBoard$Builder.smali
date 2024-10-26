.class public final Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
.super Ljava/lang/Object;
.source "SensPowerBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensPowerBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pwrBrdAnalogAmp:F

.field private pwrBrdAuxAmp:F

.field private pwrBrdDigitalAmp:F

.field private pwrBrdDigitalVolt:F

.field private pwrBrdExtAmp:F

.field private pwrBrdLedStatus:I

.field private pwrBrdMotLAmp:F

.field private pwrBrdMotRAmp:F

.field private pwrBrdServoVolt:F

.field private pwrBrdStatus:I

.field private pwrBrdSystemVolt:F

.field private timestamp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/SensPowerBoard;
    .locals 15

    .line 496
    new-instance v14, Lio/dronefleet/mavlink/asluav/SensPowerBoard;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdStatus:I

    iget v3, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdLedStatus:I

    iget v4, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdSystemVolt:F

    iget v5, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdServoVolt:F

    iget v6, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdDigitalVolt:F

    iget v7, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdMotLAmp:F

    iget v8, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdMotRAmp:F

    iget v9, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdAnalogAmp:F

    iget v10, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdDigitalAmp:F

    iget v11, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdExtAmp:F

    iget v12, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdAuxAmp:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/asluav/SensPowerBoard;-><init>(Ljava/math/BigInteger;IIFFFFFFFFFLio/dronefleet/mavlink/asluav/SensPowerBoard$1;)V

    return-object v14
.end method

.method public final pwrBrdAnalogAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board analog current\n                sensor"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 450
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdAnalogAmp:F

    return-object p0
.end method

.method public final pwrBrdAuxAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board aux current sensor"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 491
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdAuxAmp:F

    return-object p0
.end method

.method public final pwrBrdDigitalAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board digital current\n                sensor"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 464
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdDigitalAmp:F

    return-object p0
.end method

.method public final pwrBrdDigitalVolt(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board digital voltage"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 408
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdDigitalVolt:F

    return-object p0
.end method

.method public final pwrBrdExtAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board extension current\n                sensor"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 478
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdExtAmp:F

    return-object p0
.end method

.method public final pwrBrdLedStatus(I)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board leds status"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 369
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdLedStatus:I

    return-object p0
.end method

.method public final pwrBrdMotLAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board left motor current\n                sensor"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 422
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdMotLAmp:F

    return-object p0
.end method

.method public final pwrBrdMotRAmp(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board right motor current\n                sensor"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 436
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdMotRAmp:F

    return-object p0
.end method

.method public final pwrBrdServoVolt(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board servo voltage"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 395
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdServoVolt:F

    return-object p0
.end method

.method public final pwrBrdStatus(I)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board status register"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 356
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdStatus:I

    return-object p0
.end method

.method public final pwrBrdSystemVolt(F)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board system voltage"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 382
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->pwrBrdSystemVolt:F

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 343
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method
