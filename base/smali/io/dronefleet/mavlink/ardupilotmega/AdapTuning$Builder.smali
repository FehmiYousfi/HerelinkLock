.class public final Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
.super Ljava/lang/Object;
.source "AdapTuning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private achieved:F

.field private axis:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;"
        }
    .end annotation
.end field

.field private desired:F

.field private error:F

.field private f:F

.field private fDot:F

.field private omega:F

.field private omegaDot:F

.field private sigma:F

.field private sigmaDot:F

.field private theta:F

.field private thetaDot:F

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final achieved(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Achieved rate."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 410
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->achieved:F

    return-object p0
.end method

.method public final axis(Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0

    .line 371
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Axis."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 363
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final axis(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;"
        }
    .end annotation

    .line 385
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs axis([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0

    .line 378
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;
    .locals 17

    move-object/from16 v0, p0

    .line 545
    new-instance v16, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;

    iget-object v2, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->desired:F

    iget v4, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->achieved:F

    iget v5, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->error:F

    iget v6, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->theta:F

    iget v7, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->omega:F

    iget v8, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->sigma:F

    iget v9, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->thetaDot:F

    iget v10, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->omegaDot:F

    iget v11, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->sigmaDot:F

    iget v12, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->f:F

    iget v13, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->fDot:F

    iget v14, v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->u:F

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFFLio/dronefleet/mavlink/ardupilotmega/AdapTuning$1;)V

    return-object v16
.end method

.method public final desired(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired rate."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 397
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->desired:F

    return-object p0
.end method

.method public final error(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Error between model and vehicle."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 423
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->error:F

    return-object p0
.end method

.method public final f(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Projection operator value."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 514
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->f:F

    return-object p0
.end method

.method public final fDot(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Projection operator derivative."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 527
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->fDot:F

    return-object p0
.end method

.method public final omega(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Omega estimated state predictor."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->omega:F

    return-object p0
.end method

.method public final omegaDot(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Omega derivative."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 488
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->omegaDot:F

    return-object p0
.end method

.method public final sigma(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sigma estimated state predictor."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->sigma:F

    return-object p0
.end method

.method public final sigmaDot(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sigma derivative."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 501
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->sigmaDot:F

    return-object p0
.end method

.method public final theta(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Theta estimated state predictor."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 436
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->theta:F

    return-object p0
.end method

.method public final thetaDot(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Theta derivative."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 475
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->thetaDot:F

    return-object p0
.end method

.method public final u(F)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "u adaptive controlled output command."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 540
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;->u:F

    return-object p0
.end method
