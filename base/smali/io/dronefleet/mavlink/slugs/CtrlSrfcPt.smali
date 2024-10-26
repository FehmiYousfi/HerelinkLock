.class public final Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;
.super Ljava/lang/Object;
.source "CtrlSrfcPt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x68
    description = "This message sets the control surfaces for selective passthrough mode."
    id = 0xb5
.end annotation


# instance fields
.field private final bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final target:I


# direct methods
.method private constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    .line 31
    iput-object p2, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;-><init>(ILio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;
    .locals 2

    .line 92
    const-class v0, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    .line 93
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 94
    new-instance v1, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;

    invoke-direct {v1, p0, v0}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;-><init>(ILio/dronefleet/mavlink/util/EnumValue;)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x3

    .line 98
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    const-class v1, Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget p0, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bitfieldpt()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitfield containing the passthrough configuration, see CONTROL_SURFACE_FLAG ENUM."
        enumType = Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 64
    iget-object v0, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;

    .line 72
    iget v2, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final target()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CtrlSrfcPt{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitfieldpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
