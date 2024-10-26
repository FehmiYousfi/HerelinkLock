.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAltOrigin:I

.field private sueLatOrigin:I

.field private sueLonOrigin:I

.field private sueWeekNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13;
    .locals 7

    .line 212
    new-instance v6, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueWeekNo:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueLatOrigin:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueLonOrigin:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueAltOrigin:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13;-><init>(IIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$1;)V

    return-object v6
.end method

.method public final sueAltOrigin(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra MP Origin Altitude Above\n                Sea Level"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 207
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueAltOrigin:I

    return-object p0
.end method

.method public final sueLatOrigin(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra MP Origin Latitude"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 178
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueLatOrigin:I

    return-object p0
.end method

.method public final sueLonOrigin(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra MP Origin Longitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 192
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueLonOrigin:I

    return-object p0
.end method

.method public final sueWeekNo(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra GPS Week Number"
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF13$Builder;->sueWeekNo:I

    return-object p0
.end method
