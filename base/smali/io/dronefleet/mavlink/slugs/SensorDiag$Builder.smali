.class public final Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
.super Ljava/lang/Object;
.source "SensorDiag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SensorDiag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private char1:I

.field private float1:F

.field private float2:F

.field private int1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/SensorDiag;
    .locals 7

    .line 206
    new-instance v6, Lio/dronefleet/mavlink/slugs/SensorDiag;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->float1:F

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->float2:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->int1:I

    iget v4, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->char1:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/slugs/SensorDiag;-><init>(FFIILio/dronefleet/mavlink/slugs/SensorDiag$1;)V

    return-object v6
.end method

.method public final char1(I)Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Int 8 field 1"
        position = 0x4
        signed = true
        unitSize = 0x1
    .end annotation

    .line 201
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->char1:I

    return-object p0
.end method

.method public final float1(F)Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Float field 1"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 160
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->float1:F

    return-object p0
.end method

.method public final float2(F)Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Float field 2"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 173
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->float2:F

    return-object p0
.end method

.method public final int1(I)Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Int 16 field 1"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 187
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;->int1:I

    return-object p0
.end method
