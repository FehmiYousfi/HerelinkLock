.class public final Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
.super Ljava/lang/Object;
.source "IsrLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/IsrLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private height:F

.field private latitude:F

.field private longitude:F

.field private option1:I

.field private option2:I

.field private option3:I

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/IsrLocation;
    .locals 10

    .line 308
    new-instance v9, Lio/dronefleet/mavlink/slugs/IsrLocation;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->latitude:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->longitude:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->height:F

    iget v5, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option1:I

    iget v6, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option2:I

    iget v7, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option3:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/slugs/IsrLocation;-><init>(IFFFIIILio/dronefleet/mavlink/slugs/IsrLocation$1;)V

    return-object v9
.end method

.method public final height(F)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ISR Height"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 264
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->height:F

    return-object p0
.end method

.method public final latitude(F)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ISR Latitude"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->latitude:F

    return-object p0
.end method

.method public final longitude(F)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ISR Longitude"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->longitude:F

    return-object p0
.end method

.method public final option1(I)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Option 1"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 277
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option1:I

    return-object p0
.end method

.method public final option2(I)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Option 2"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option2:I

    return-object p0
.end method

.method public final option3(I)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Option 3"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 303
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->option3:I

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 225
    iput p1, p0, Lio/dronefleet/mavlink/slugs/IsrLocation$Builder;->target:I

    return-object p0
.end method
