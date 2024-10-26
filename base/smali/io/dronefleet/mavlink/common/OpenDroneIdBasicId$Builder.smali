.class public final Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdBasicId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private idOrMac:[B

.field private idType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidIdType;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I

.field private uaType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidUaType;",
            ">;"
        }
    .end annotation
.end field

.field private uasId:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;
    .locals 9

    .line 359
    new-instance v8, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idOrMac:[B

    iget-object v4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uasId:[B

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/common/OpenDroneIdBasicId$1;)V

    return-object v8
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 265
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final idType(Lio/dronefleet/mavlink/common/MavOdidIdType;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0

    .line 288
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final idType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidIdType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the format for\n                the uas_id field of this message."
        enumType = Lio/dronefleet/mavlink/common/MavOdidIdType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 280
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final idType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;"
        }
    .end annotation

    .line 302
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs idType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0

    .line 295
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 248
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetSystem:I

    return-object p0
.end method

.method public final uaType(Lio/dronefleet/mavlink/common/MavOdidUaType;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0

    .line 324
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final uaType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidUaType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the type of UA\n                (Unmanned Aircraft)."
        enumType = Lio/dronefleet/mavlink/common/MavOdidUaType;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 316
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final uaType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;"
        }
    .end annotation

    .line 338
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs uaType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0

    .line 331
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final uasId([B)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "UAS (Unmanned Aircraft System) ID following the\n                format specified by id_type. Shall be filled with nulls in the unused portion of the\n                field."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 354
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uasId:[B

    return-object p0
.end method
