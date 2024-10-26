.class public final Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
.super Ljava/lang/Object;
.source "NovatelDiag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/NovatelDiag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private csfails:I

.field private possolage:F

.field private postype:I

.field private receiverstatus:J

.field private solstatus:I

.field private timestatus:I

.field private veltype:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/NovatelDiag;
    .locals 11

    .line 312
    new-instance v10, Lio/dronefleet/mavlink/slugs/NovatelDiag;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->timestatus:I

    iget-wide v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->receiverstatus:J

    iget v4, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->solstatus:I

    iget v5, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->postype:I

    iget v6, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->veltype:I

    iget v7, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->possolage:F

    iget v8, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->csfails:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/slugs/NovatelDiag;-><init>(IJIIIFILio/dronefleet/mavlink/slugs/NovatelDiag$1;)V

    return-object v10
.end method

.method public final csfails(I)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Times the CRC has failed since boot"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->csfails:I

    return-object p0
.end method

.method public final possolage(F)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Age of the position solution"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 294
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->possolage:F

    return-object p0
.end method

.method public final postype(I)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "position type. See table 43 page 196"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->postype:I

    return-object p0
.end method

.method public final receiverstatus(J)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status Bitfield. See table 69 page 350\n                Novatel OEMstar Manual"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 242
    iput-wide p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->receiverstatus:J

    return-object p0
.end method

.method public final solstatus(I)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "solution Status. See table 44 page 197"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->solstatus:I

    return-object p0
.end method

.method public final timestatus(I)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Time Status. See Table 8 page 27 Novatel\n                OEMStar Manual"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->timestatus:I

    return-object p0
.end method

.method public final veltype(I)Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "velocity type. See table 43 page 196"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 281
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;->veltype:I

    return-object p0
.end method
