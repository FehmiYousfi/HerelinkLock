.class public final Lio/dronefleet/mavlink/minimal/Heartbeat;
.super Ljava/lang/Object;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x32
    description = "The heartbeat message shows that a system or component is present and\n                responding. The type and autopilot fields (along with the message component id),\n                allow the receiving system to treat further messages from this system appropriately\n                (e.g. by laying out the user interface based on the autopilot). This microservice is\n                documented at https://mavlink.io/en/services/heartbeat.html"
    id = 0x0
.end annotation


# instance fields
.field private final autopilot:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation
.end field

.field private final baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final customMode:J

.field private final mavlinkVersion:I

.field private final systemStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavState;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavState;",
            ">;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 49
    iput-object p2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    .line 50
    iput-object p3, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    .line 51
    iput-wide p4, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    .line 52
    iput-object p6, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    .line 53
    iput p7, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/minimal/Heartbeat$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/minimal/Heartbeat;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 61
    new-instance v0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/minimal/Heartbeat;
    .locals 9

    .line 189
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 190
    const-class v0, Lio/dronefleet/mavlink/minimal/MavType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 191
    const-class v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 192
    const-class v0, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 193
    const-class v0, Lio/dronefleet/mavlink/minimal/MavState;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 195
    new-instance v8, Lio/dronefleet/mavlink/minimal/Heartbeat;

    move-object v0, v8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-object v6, v7

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/minimal/Heartbeat;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;I)V

    return-object v8
.end method

.method public static serialize(Lio/dronefleet/mavlink/minimal/Heartbeat;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x9

    .line 199
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    iget-wide v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 201
    const-class v1, Lio/dronefleet/mavlink/minimal/MavType;

    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 202
    const-class v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    const-class v1, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_2
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    const-class v1, Lio/dronefleet/mavlink/minimal/MavState;

    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_3
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget p0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final autopilot()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot type / class. Use\n                MAV_AUTOPILOT_INVALID for components that are not flight controllers."
        enumType = Lio/dronefleet/mavlink/minimal/MavAutopilot;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 94
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final baseMode()Lio/dronefleet/mavlink/util/EnumValue;
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
        description = "System\n                mode bitmap."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 108
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final customMode()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for autopilot-specific\n                flags"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 121
    iget-wide v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/minimal/Heartbeat;

    .line 157
    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 158
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 159
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 160
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 161
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 162
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 169
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-wide v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final mavlinkVersion()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MAVLink version, not\n                writable by user, gets added by protocol because of magic data type:\n                uint8_t_mavlink_version"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    return v0
.end method

.method public final systemStatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System status flag."
        enumType = Lio/dronefleet/mavlink/minimal/MavState;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 134
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heartbeat{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autopilot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->customMode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", systemStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mavlinkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->mavlinkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle or component type. For a\n                flight controller component the vehicle type (quadrotor, helicopter, etc.). For\n                other components the component type (e.g. camera, gimbal, etc.). This should be used\n                in preference to component id for identifying the component type."
        enumType = Lio/dronefleet/mavlink/minimal/MavType;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/minimal/Heartbeat;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
