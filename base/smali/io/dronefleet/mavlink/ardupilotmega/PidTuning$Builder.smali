.class public final Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
.super Ljava/lang/Object;
.source "PidTuning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/PidTuning;
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

.field private d:F

.field private desired:F

.field private ff:F

.field private i:F

.field private p:F

.field private pdmod:F

.field private srate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final achieved(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Achieved rate."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->achieved:F

    return-object p0
.end method

.method public final axis(Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0

    .line 284
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Axis."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 276
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final axis(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;"
        }
    .end annotation

    .line 298
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs axis([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0

    .line 291
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->axis(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/PidTuning;
    .locals 12

    .line 408
    new-instance v11, Lio/dronefleet/mavlink/ardupilotmega/PidTuning;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->desired:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->achieved:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->ff:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->p:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->i:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->d:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->srate:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->pdmod:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/ardupilotmega/PidTuning;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFLio/dronefleet/mavlink/ardupilotmega/PidTuning$1;)V

    return-object v11
.end method

.method public final d(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "D component."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->d:F

    return-object p0
.end method

.method public final desired(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired rate."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 310
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->desired:F

    return-object p0
.end method

.method public final ff(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "FF component."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->ff:F

    return-object p0
.end method

.method public final i(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "I component."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 362
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->i:F

    return-object p0
.end method

.method public final p(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "P component."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 349
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->p:F

    return-object p0
.end method

.method public final pdmod(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "P/D oscillation modifier."
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->pdmod:F

    return-object p0
.end method

.method public final srate(F)Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Slew rate."
        extension = true
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/PidTuning$Builder;->srate:F

    return-object p0
.end method
