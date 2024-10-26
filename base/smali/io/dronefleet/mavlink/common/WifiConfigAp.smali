.class public final Lio/dronefleet/mavlink/common/WifiConfigAp;
.super Ljava/lang/Object;
.source "WifiConfigAp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x13
    description = "Configure WiFi AP SSID, password, and mode. This message is re-emitted as\n                an acknowledgement by the AP. The message may also be explicitly requested using\n                MAV_CMD_REQUEST_MESSAGE"
    id = 0x12b
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/common/WifiConfigAp$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/common/WifiConfigAp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/WifiConfigAp;
    .locals 2

    const/16 v0, 0x20

    .line 96
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 97
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v1, Lio/dronefleet/mavlink/common/WifiConfigAp;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/common/WifiConfigAp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/WifiConfigAp;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x60

    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    iget-object p0, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    const/16 v1, 0x40

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

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/WifiConfigAp;

    .line 76
    iget-object v2, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 77
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

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

    .line 84
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 85
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final password()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x40
        description = "Password. Blank for an open AP. MD5 hash when\n                message is sent back as a response."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 68
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final ssid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of Wi-Fi network (SSID). Blank to leave it\n                unchanged when setting. Current SSID when sent back as a response."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 54
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfigAp{ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
