.class public final Lio/dronefleet/mavlink/common/ChangeOperatorControl;
.super Ljava/lang/Object;
.source "ChangeOperatorControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd9
    description = "Request to control this MAV"
    id = 0x5
.end annotation


# instance fields
.field private final controlRequest:I

.field private final passkey:Ljava/lang/String;

.field private final targetSystem:I

.field private final version:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    .line 33
    iput p2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    .line 34
    iput p3, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    .line 35
    iput-object p4, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Lio/dronefleet/mavlink/common/ChangeOperatorControl$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/ChangeOperatorControl;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 43
    new-instance v0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ChangeOperatorControl;
    .locals 4

    .line 135
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 136
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 137
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x19

    .line 138
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance v3, Lio/dronefleet/mavlink/common/ChangeOperatorControl;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/common/ChangeOperatorControl;-><init>(IIILjava/lang/String;)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ChangeOperatorControl;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x1c

    .line 143
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    iget-object p0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final controlRequest()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: request control of this MAV, 1: Release\n                control of this MAV"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 68
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ChangeOperatorControl;

    .line 109
    iget v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 110
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 111
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 112
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

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

.method public hashCode()I
    .locals 2

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final passkey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x19
        description = "Password / Key, depending on version plaintext or\n                encrypted. 25 or less characters, NULL terminated. The characters may involve A-Z,\n                a-z, 0-9, and \"!?,.-\""
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 101
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    return-object v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System the GCS requests control for"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 55
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeOperatorControl{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", controlRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->controlRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", passkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->passkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final version()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: key as plaintext, 1-255: future,\n                different hashing/encryption variants. The GCS should in general use the safest mode\n                possible initially and then gradually move down the encryption level if it gets a\n                NACK message indicating an encryption mismatch."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl;->version:I

    return v0
.end method
