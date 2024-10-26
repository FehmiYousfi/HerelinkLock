.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueIdDiyDronesUrl:[B

.field private sueIdLeadPilot:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;
    .locals 4

    .line 140
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;

    iget-object v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;->sueIdLeadPilot:[B

    iget-object v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;->sueIdDiyDronesUrl:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;-><init>([B[BLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$1;)V

    return-object v0
.end method

.method public final sueIdDiyDronesUrl([B)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x46
        description = "Serial UDB Extra URL of Lead\n                Pilot or Team"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 135
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;->sueIdDiyDronesUrl:[B

    return-object p0
.end method

.method public final sueIdLeadPilot([B)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x28
        description = "Serial UDB Extra Name of Expected\n                Lead Pilot"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 120
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;->sueIdLeadPilot:[B

    return-object p0
.end method
