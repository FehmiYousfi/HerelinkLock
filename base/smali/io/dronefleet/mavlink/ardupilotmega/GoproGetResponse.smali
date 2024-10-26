.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;
.super Ljava/lang/Object;
.source "GoproGetResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xca
    description = "Response from a GOPRO_COMMAND get request."
    id = 0xd9
.end annotation


# instance fields
.field private final cmdId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final value:[B


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;[B)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    .line 34
    iput-object p2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    .line 35
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 43
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;
    .locals 3

    .line 113
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    .line 114
    const-class v2, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    invoke-static {v2, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v1

    const/4 v2, 0x4

    .line 115
    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 116
    new-instance v2, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x6

    .line 120
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 122
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 123
    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final cmdId()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 56
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;

    .line 90
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 91
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 92
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

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
    .locals 2

    .line 99
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 100
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 101
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

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
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 69
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoproGetResponse{cmdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Value."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 82
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;->value:[B

    return-object v0
.end method
