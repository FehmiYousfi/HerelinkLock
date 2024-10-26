.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF17.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueFeedForward:F

.field private sueTurnRateFbw:F

.field private sueTurnRateNav:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17;
    .locals 5

    .line 167
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueFeedForward:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueTurnRateNav:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueTurnRateFbw:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17;-><init>(FFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$1;)V

    return-object v0
.end method

.method public final sueFeedForward(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Feed Forward Gain"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 136
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueFeedForward:F

    return-object p0
.end method

.method public final sueTurnRateFbw(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Max Turn Rate in Fly By Wire Mode"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueTurnRateFbw:F

    return-object p0
.end method

.method public final sueTurnRateNav(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Max Turn Rate when Navigating"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 149
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF17$Builder;->sueTurnRateNav:F

    return-object p0
.end method
