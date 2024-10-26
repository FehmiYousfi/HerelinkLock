.class public final Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
.super Ljava/lang/Object;
.source "DataTransmissionHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/DataTransmissionHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private height:I

.field private jpgQuality:I

.field private packets:I

.field private payload:I

.field private size:J

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/DataTransmissionHandshake;
    .locals 11

    .line 343
    new-instance v10, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->size:J

    iget v4, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->width:I

    iget v5, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->height:I

    iget v6, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->packets:I

    iget v7, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->payload:I

    iget v8, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->jpgQuality:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JIIIIILio/dronefleet/mavlink/common/DataTransmissionHandshake$1;)V

    return-object v10
.end method

.method public final height(I)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Height of a matrix or image."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 297
    iput p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->height:I

    return-object p0
.end method

.method public final jpgQuality(I)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "JPEG quality. Values: [1-100]."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 338
    iput p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->jpgQuality:I

    return-object p0
.end method

.method public final packets(I)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of packets being sent (set on ACK only)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 310
    iput p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->packets:I

    return-object p0
.end method

.method public final payload(I)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Payload size per packet (normally 253\n                byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 325
    iput p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->payload:I

    return-object p0
.end method

.method public final size(J)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "total data size (set on ACK only)."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 271
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->size:J

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/MavlinkDataStreamType;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0

    .line 245
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of\n                requested/acknowledged data."
        enumType = Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 237
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0

    .line 252
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final width(I)Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Width of a matrix or image."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 284
    iput p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;->width:I

    return-object p0
.end method
