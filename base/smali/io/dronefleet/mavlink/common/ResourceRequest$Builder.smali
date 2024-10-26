.class public final Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
.super Ljava/lang/Object;
.source "ResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private requestId:I

.field private storage:[B

.field private transferType:I

.field private uri:[B

.field private uriType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ResourceRequest;
    .locals 8

    .line 258
    new-instance v7, Lio/dronefleet/mavlink/common/ResourceRequest;

    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->requestId:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->uriType:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->uri:[B

    iget v4, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->transferType:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->storage:[B

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ResourceRequest;-><init>(II[BI[BLio/dronefleet/mavlink/common/ResourceRequest$1;)V

    return-object v7
.end method

.method public final requestId(I)Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID. This ID should be re-used when\n                sending back URI contents"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 192
    iput p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->requestId:I

    return-object p0
.end method

.method public final storage([B)Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x78
        description = "The storage path the autopilot wants the URI\n                to be stored in. Will only be valid if the transfer_type has a storage associated\n                (e.g. MAVLink FTP)."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 253
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->storage:[B

    return-object p0
.end method

.method public final transferType(I)Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The way the autopilot wants to receive the\n                URI. 0 = MAVLink FTP. 1 = binary stream."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 236
    iput p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->transferType:I

    return-object p0
.end method

.method public final uri([B)Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x78
        description = "The requested unique resource identifier (URI). It\n                is not necessarily a straight domain name (depends on the URI type enum)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 222
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->uri:[B

    return-object p0
.end method

.method public final uriType(I)Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The type of requested URI. 0 = a file via URL. 1 =\n                a UAVCAN binary"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;->uriType:I

    return-object p0
.end method
