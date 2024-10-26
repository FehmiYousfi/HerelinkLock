.class public final Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
.super Ljava/lang/Object;
.source "HilActuatorControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilActuatorControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private controls:[F

.field private flags:Ljava/math/BigInteger;

.field private mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/HilActuatorControls;
    .locals 7

    .line 247
    new-instance v6, Lio/dronefleet/mavlink/common/HilActuatorControls;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->controls:[F

    iget-object v3, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->flags:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/HilActuatorControls;-><init>(Ljava/math/BigInteger;[FLio/dronefleet/mavlink/util/EnumValue;Ljava/math/BigInteger;Lio/dronefleet/mavlink/common/HilActuatorControls$1;)V

    return-object v6
.end method

.method public final controls([F)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Control outputs -1 .. 1. Channel assignment\n                depends on the simulated hardware."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 192
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->controls:[F

    return-object p0
.end method

.method public final flags(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flags as bitfield, 1: indicate\n                simulation using lockstep."
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 242
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->flags:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final mode(Lio/dronefleet/mavlink/minimal/MavModeFlag;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0

    .line 215
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System mode.\n                Includes arming state."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 207
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0

    .line 222
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 177
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
