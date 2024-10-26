.class public final Lio/dronefleet/mavlink/common/SetMode;
.super Ljava/lang/Object;
.source "SetMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetMode$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x59
    description = "Set the system mode, as defined by enum MAV_MODE. There is no target\n                component id as the mode is by definition for the overall aircraft, not only for one\n                component."
    id = 0xb
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;"
        }
    .end annotation
.end field

.field private final customMode:J

.field private final targetSystem:I


# direct methods
.method private constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;J)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    .line 40
    iput-object p2, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    .line 41
    iput-wide p3, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/common/SetMode$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/SetMode;-><init>(ILio/dronefleet/mavlink/util/EnumValue;J)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/common/SetMode$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetMode$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetMode;
    .locals 5

    .line 118
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 119
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 120
    const-class v3, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 121
    new-instance v3, Lio/dronefleet/mavlink/common/SetMode;

    invoke-direct {v3, v2, p0, v0, v1}, Lio/dronefleet/mavlink/common/SetMode;-><init>(ILio/dronefleet/mavlink/util/EnumValue;J)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetMode;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x6

    .line 125
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    iget v1, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    const-class v1, Lio/dronefleet/mavlink/common/MavMode;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public final baseMode()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The new base mode."
        enumType = Lio/dronefleet/mavlink/common/MavMode;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 74
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final customMode()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The new autopilot-specific mode. This field\n                can be ignored by an autopilot."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 87
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetMode;

    .line 95
    iget v2, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 96
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 97
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 105
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 106
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the mode"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 61
    iget v0, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetMode{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetMode;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetMode;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetMode;->customMode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
