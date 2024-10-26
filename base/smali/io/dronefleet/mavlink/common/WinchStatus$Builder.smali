.class public final Lio/dronefleet/mavlink/common/WinchStatus$Builder;
.super Ljava/lang/Object;
.source "WinchStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/WinchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private current:F

.field private lineLength:F

.field private speed:F

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavWinchStatusFlag;",
            ">;"
        }
    .end annotation
.end field

.field private temperature:I

.field private tension:F

.field private timeUsec:Ljava/math/BigInteger;

.field private voltage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/WinchStatus;
    .locals 11

    .line 388
    new-instance v10, Lio/dronefleet/mavlink/common/WinchStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->lineLength:F

    iget v3, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->speed:F

    iget v4, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->tension:F

    iget v5, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->voltage:F

    iget v6, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->current:F

    iget v7, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->temperature:I

    iget-object v8, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/WinchStatus;-><init>(Ljava/math/BigInteger;FFFFFILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/WinchStatus$1;)V

    return-object v10
.end method

.method public final current(F)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current draw from the winch. NaN if\n                unknown"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 333
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->current:F

    return-object p0
.end method

.method public final lineLength(F)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Length of line released. NaN if\n                unknown"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 276
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->lineLength:F

    return-object p0
.end method

.method public final speed(F)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed line is being released or retracted.\n                Positive values if being released, negative values if being retracted, NaN if\n                unknown"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->speed:F

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/common/MavWinchStatusFlag;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0

    .line 370
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavWinchStatusFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/WinchStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status flags"
        enumType = Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 362
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/WinchStatus$Builder;"
        }
    .end annotation

    .line 384
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0

    .line 377
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature of the motor.\n                INT16_MAX if unknown"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 348
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->temperature:I

    return-object p0
.end method

.method public final tension(F)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Tension on the line. NaN if unknown"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 305
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->tension:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (synced to UNIX time or\n                since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 262
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final voltage(F)Lio/dronefleet/mavlink/common/WinchStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage of the battery supplying the winch.\n                NaN if unknown"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 319
    iput p1, p0, Lio/dronefleet/mavlink/common/WinchStatus$Builder;->voltage:F

    return-object p0
.end method
