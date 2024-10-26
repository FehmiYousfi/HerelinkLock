.class public final Lio/dronefleet/mavlink/common/HilControls$Builder;
.super Ljava/lang/Object;
.source "HilControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aux1:F

.field private aux2:F

.field private aux3:F

.field private aux4:F

.field private mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;"
        }
    .end annotation
.end field

.field private navMode:I

.field private pitchElevator:F

.field private rollAilerons:F

.field private throttle:F

.field private timeUsec:Ljava/math/BigInteger;

.field private yawRudder:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aux1(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aux 1, -1 .. 1"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 390
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux1:F

    return-object p0
.end method

.method public final aux2(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aux 2, -1 .. 1"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux2:F

    return-object p0
.end method

.method public final aux3(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aux 3, -1 .. 1"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 416
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux3:F

    return-object p0
.end method

.method public final aux4(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aux 4, -1 .. 1"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 429
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux4:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HilControls;
    .locals 14

    .line 482
    new-instance v13, Lio/dronefleet/mavlink/common/HilControls;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->rollAilerons:F

    iget v3, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->pitchElevator:F

    iget v4, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->yawRudder:F

    iget v5, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->throttle:F

    iget v6, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux1:F

    iget v7, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux2:F

    iget v8, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux3:F

    iget v9, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->aux4:F

    iget-object v10, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget v11, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->navMode:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/HilControls;-><init>(Ljava/math/BigInteger;FFFFFFFFLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/common/HilControls$1;)V

    return-object v13
.end method

.method public final mode(Lio/dronefleet/mavlink/common/MavMode;)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0

    .line 451
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HilControls$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System mode."
        enumType = Lio/dronefleet/mavlink/common/MavMode;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 443
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HilControls$Builder;"
        }
    .end annotation

    .line 465
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0

    .line 458
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final navMode(I)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Navigation mode (MAV_NAV_MODE)"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 477
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->navMode:I

    return-object p0
.end method

.method public final pitchElevator(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control output -1 .. 1"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 351
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->pitchElevator:F

    return-object p0
.end method

.method public final rollAilerons(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control output -1 .. 1"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 338
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->rollAilerons:F

    return-object p0
.end method

.method public final throttle(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle 0 .. 1"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 377
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->throttle:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 325
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final yawRudder(F)Lio/dronefleet/mavlink/common/HilControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control output -1 .. 1"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 364
    iput p1, p0, Lio/dronefleet/mavlink/common/HilControls$Builder;->yawRudder:F

    return-object p0
.end method
