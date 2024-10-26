.class public final Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;
.super Ljava/lang/Object;
.source "LimitsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x90
    description = "Status of AP_Limits. Sent in extended status stream when AP_Limits is\n                enabled."
    id = 0xa7
.end annotation


# instance fields
.field private final breachCount:I

.field private final lastAction:J

.field private final lastClear:J

.field private final lastRecovery:J

.field private final lastTrigger:J

.field private final limitsState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
            ">;"
        }
    .end annotation
.end field

.field private final modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field

.field private final modsRequired:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field

.field private final modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
            ">;JJJJI",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    .line 48
    iput-wide p2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    .line 49
    iput-wide p4, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    .line 50
    iput-wide p6, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    .line 51
    iput-wide p8, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    .line 52
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    .line 53
    iput-object p11, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    .line 54
    iput-object p12, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    .line 55
    iput-object p13, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;
    .locals 15

    .line 228
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 229
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 230
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 231
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 232
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 233
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v11

    .line 234
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v12

    .line 235
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 236
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 237
    new-instance v14, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;

    move-object v0, v14

    move-object v1, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v14
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x16

    .line 241
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 242
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 243
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 245
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 247
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 248
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 249
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 250
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/LimitModule;

    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_3
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final breachCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of fence breaches."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 186
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;

    .line 187
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 188
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 189
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 190
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 191
    :cond_5
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 192
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 193
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 194
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 195
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 202
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 204
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 207
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 208
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 210
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lastAction()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last recovery\n                action."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 102
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    return-wide v0
.end method

.method public final lastClear()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                all-clear."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 128
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    return-wide v0
.end method

.method public final lastRecovery()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                successful recovery."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 115
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    return-wide v0
.end method

.method public final lastTrigger()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                breach."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 89
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    return-wide v0
.end method

.method public final limitsState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "State of AP_Limits."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 76
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final modsEnabled()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of enabled modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 153
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final modsRequired()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of required modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 166
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final modsTriggered()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of triggered modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 179
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitsStatus{limitsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastTrigger:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastAction:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastRecovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastRecovery:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->lastClear:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", breachCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->breachCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modsTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
