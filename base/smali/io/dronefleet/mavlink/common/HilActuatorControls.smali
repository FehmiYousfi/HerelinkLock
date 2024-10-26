.class public final Lio/dronefleet/mavlink/common/HilActuatorControls;
.super Ljava/lang/Object;
.source "HilActuatorControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x2f
    description = "Sent from autopilot to simulation. Hardware in the loop control outputs\n                (replacement for HIL_CONTROLS)"
    id = 0x5d
.end annotation


# instance fields
.field private final controls:[F

.field private final flags:Ljava/math/BigInteger;

.field private final mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[FLio/dronefleet/mavlink/util/EnumValue;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "[F",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    .line 40
    iput-object p2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    .line 41
    iput-object p3, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    .line 42
    iput-object p4, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[FLio/dronefleet/mavlink/util/EnumValue;Ljava/math/BigInteger;Lio/dronefleet/mavlink/common/HilActuatorControls$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/HilActuatorControls;-><init>(Ljava/math/BigInteger;[FLio/dronefleet/mavlink/util/EnumValue;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/HilActuatorControls$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/HilActuatorControls;
    .locals 5

    .line 140
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 141
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x40

    .line 142
    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v2

    .line 143
    const-class v3, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 144
    new-instance v3, Lio/dronefleet/mavlink/common/HilActuatorControls;

    invoke-direct {v3, v0, v2, p0, v1}, Lio/dronefleet/mavlink/common/HilActuatorControls;-><init>(Ljava/math/BigInteger;[FLio/dronefleet/mavlink/util/EnumValue;Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/HilActuatorControls;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x51

    .line 148
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    const-class v1, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final controls()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Control outputs -1 .. 1. Channel assignment\n                depends on the simulated hardware."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/HilActuatorControls;

    .line 114
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 115
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 116
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 117
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final flags()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flags as bitfield, 1: indicate\n                simulation using lockstep."
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 106
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 124
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 125
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 126
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 127
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final mode()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System mode.\n                Includes arming state."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 93
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 65
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HilActuatorControls{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->controls:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilActuatorControls;->flags:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method