.class public final Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;
.super Ljava/lang/Object;
.source "OpenDroneIdArmStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x8b
    description = "Status from the transmitter telling the flight controller if the remote ID\n                system is ready for arming."
    id = 0x3276
.end annotation


# instance fields
.field private final error:Ljava/lang/String;

.field private final status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidArmStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidArmStatus;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    .line 33
    iput-object p2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 41
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;
    .locals 2

    .line 97
    const-class v0, Lio/dronefleet/mavlink/common/MavOdidArmStatus;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    const/16 v1, 0x32

    .line 98
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v1, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x33

    .line 103
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidArmStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    iget-object p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    const/16 v1, 0x32

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

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
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    .line 77
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 78
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

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

.method public final error()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Text error message, should be empty if status is\n                good to arm. Fill with nulls in unused portion."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 69
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final status()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidArmStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status level indicating\n                if arming is allowed."
        enumType = Lio/dronefleet/mavlink/common/MavOdidArmStatus;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 55
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdArmStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
