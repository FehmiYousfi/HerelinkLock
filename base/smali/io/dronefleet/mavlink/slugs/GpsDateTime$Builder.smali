.class public final Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
.super Ljava/lang/Object;
.source "GpsDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/GpsDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clockstat:I

.field private day:I

.field private gppgl:I

.field private hour:I

.field private min:I

.field private month:I

.field private percentused:I

.field private sec:I

.field private sigusedmask:I

.field private usesat:I

.field private vissat:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/GpsDateTime;
    .locals 15

    .line 487
    new-instance v14, Lio/dronefleet/mavlink/slugs/GpsDateTime;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->year:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->month:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->day:I

    iget v4, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->hour:I

    iget v5, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->min:I

    iget v6, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->sec:I

    iget v7, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->clockstat:I

    iget v8, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->vissat:I

    iget v9, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->usesat:I

    iget v10, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->gppgl:I

    iget v11, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->sigusedmask:I

    iget v12, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->percentused:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/slugs/GpsDateTime;-><init>(IIIIIIIIIIIILio/dronefleet/mavlink/slugs/GpsDateTime$1;)V

    return-object v14
.end method

.method public final clockstat(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Clock Status. See table 47 page 211 OEMStar\n                Manual"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 416
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->clockstat:I

    return-object p0
.end method

.method public final day(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Day reported by Gps"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 363
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->day:I

    return-object p0
.end method

.method public final gppgl(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS+GLONASS satellites in Solution"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 455
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->gppgl:I

    return-object p0
.end method

.method public final hour(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hour reported by Gps"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 376
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->hour:I

    return-object p0
.end method

.method public final min(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Min reported by Gps"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->min:I

    return-object p0
.end method

.method public final month(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Month reported by Gps"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 350
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->month:I

    return-object p0
.end method

.method public final percentused(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Percent used GPS"
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 482
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->percentused:I

    return-object p0
.end method

.method public final sec(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sec reported by Gps"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 402
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->sec:I

    return-object p0
.end method

.method public final sigusedmask(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS and GLONASS usage mask (bit 0 GPS_used?\n                bit_4 GLONASS_used?)"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 469
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->sigusedmask:I

    return-object p0
.end method

.method public final usesat(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Used satellites in Solution"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 442
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->usesat:I

    return-object p0
.end method

.method public final vissat(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Visible satellites reported by Gps"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 429
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->vissat:I

    return-object p0
.end method

.method public final year(I)Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Year reported by Gps"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 337
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;->year:I

    return-object p0
.end method
