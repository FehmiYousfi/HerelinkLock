.class public final Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authenticationData:[B

.field private authenticationType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidAuthType;",
            ">;"
        }
    .end annotation
.end field

.field private dataPage:I

.field private idOrMac:[B

.field private lastPageIndex:I

.field private length:I

.field private targetComponent:I

.field private targetSystem:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticationData([B)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x17
        description = "Opaque authentication data. For\n                page 0, the size is only 17 bytes. For other pages, the size is 23 bytes. Shall be\n                filled with nulls in the unused portion of the field."
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 457
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationData:[B

    return-object p0
.end method

.method public final authenticationType(Lio/dronefleet/mavlink/common/MavOdidAuthType;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0

    .line 364
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final authenticationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidAuthType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the\n                type of authentication."
        enumType = Lio/dronefleet/mavlink/common/MavOdidAuthType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 356
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final authenticationType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;"
        }
    .end annotation

    .line 378
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs authenticationType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0

    .line 371
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication;
    .locals 13

    .line 462
    new-instance v12, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->idOrMac:[B

    iget-object v4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->dataPage:I

    iget v6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->lastPageIndex:I

    iget v7, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->length:I

    iget-wide v8, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->timestamp:J

    iget-object v10, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->authenticationData:[B

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIJ[BLio/dronefleet/mavlink/common/OpenDroneIdAuthentication$1;)V

    return-object v12
.end method

.method public final dataPage(I)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Allowed range is 0 - 15."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 390
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->dataPage:I

    return-object p0
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 341
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final lastPageIndex(I)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This field is only present for page 0.\n                Allowed range is 0 - 15. See the description of struct ODID_Auth_data at\n                https://github.com/opendroneid/opendroneid-core-c/blob/master/libopendroneid/opendroneid.h."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 407
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->lastPageIndex:I

    return-object p0
.end method

.method public final length(I)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This field is only present for page 0.\n                Total bytes of authentication_data from all data pages. See the description of\n                struct ODID_Auth_data at\n                https://github.com/opendroneid/opendroneid-core-c/blob/master/libopendroneid/opendroneid.h."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 425
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->length:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 324
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 311
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timestamp(J)Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This field is only present for page 0.\n                32 bit Unix Timestamp in seconds since 00:00:00 01/01/2019."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 440
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdAuthentication$Builder;->timestamp:J

    return-object p0
.end method
