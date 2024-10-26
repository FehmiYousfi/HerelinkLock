.class public final Lio/dronefleet/mavlink/common/ExtendedSysState;
.super Ljava/lang/Object;
.source "ExtendedSysState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x82
    description = "Provides state for additional features"
    id = 0xf5
.end annotation


# instance fields
.field private final landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private final vtolState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavVtolState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavVtolState;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    .line 32
    iput-object p2, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ExtendedSysState$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/common/ExtendedSysState;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ExtendedSysState;
    .locals 3

    .line 97
    const-class v0, Lio/dronefleet/mavlink/common/MavVtolState;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    .line 98
    const-class v2, Lio/dronefleet/mavlink/common/MavLandedState;

    invoke-static {v2, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 99
    new-instance v1, Lio/dronefleet/mavlink/common/ExtendedSysState;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/common/ExtendedSysState;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ExtendedSysState;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x2

    .line 103
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    const-class v1, Lio/dronefleet/mavlink/common/MavVtolState;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    const-class v1, Lio/dronefleet/mavlink/common/MavLandedState;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ExtendedSysState;

    .line 77
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 78
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final landedState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is\n                set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 69
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendedSysState{vtolState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", landedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vtolState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavVtolState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The VTOL state if\n                applicable. Is set to MAV_VTOL_STATE_UNDEFINED if UAV is not in VTOL configuration."
        enumType = Lio/dronefleet/mavlink/common/MavVtolState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 55
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ExtendedSysState;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
