.class public final Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdOperatorId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private idOrMac:[B

.field private operatorId:Ljava/lang/String;

.field private operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;
    .locals 8

    .line 289
    new-instance v7, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->idOrMac:[B

    iget-object v4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$1;)V

    return-object v7
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 232
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final operatorId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Text description or numeric value expressed as\n                ASCII characters. Shall be filled with nulls in the unused portion of the field."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 284
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorId:Ljava/lang/String;

    return-object p0
.end method

.method public final operatorIdType(Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0

    .line 255
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final operatorIdType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates\n                the type of the operator_id field."
        enumType = Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 247
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final operatorIdType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs operatorIdType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0

    .line 262
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetSystem:I

    return-object p0
.end method
