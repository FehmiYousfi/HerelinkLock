.class public final Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;
.super Ljava/lang/Object;
.source "Data32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Data32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private len:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Data32;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Data32;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->type:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->len:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->data:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/Data32;-><init>(II[BLio/dronefleet/mavlink/ardupilotmega/Data32$1;)V

    return-object v0
.end method

.method public final data([B)Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Raw data."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 164
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->data:[B

    return-object p0
.end method

.method public final len(I)Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data length."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 150
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->len:I

    return-object p0
.end method

.method public final type(I)Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data type."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data32$Builder;->type:I

    return-object p0
.end method
