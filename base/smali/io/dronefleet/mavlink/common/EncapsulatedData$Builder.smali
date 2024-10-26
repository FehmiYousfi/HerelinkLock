.class public final Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;
.super Ljava/lang/Object;
.source "EncapsulatedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/EncapsulatedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private seqnr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/EncapsulatedData;
    .locals 4

    .line 138
    new-instance v0, Lio/dronefleet/mavlink/common/EncapsulatedData;

    iget v1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;->seqnr:I

    iget-object v2, p0, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;->data:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/EncapsulatedData;-><init>(I[BLio/dronefleet/mavlink/common/EncapsulatedData$1;)V

    return-object v0
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xfd
        description = "image data bytes"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 133
    iput-object p1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;->data:[B

    return-object p0
.end method

.method public final seqnr(I)Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "sequence number (starting with 0 on every\n                transmission)"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 119
    iput p1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;->seqnr:I

    return-object p0
.end method
