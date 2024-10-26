.class public final Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
.super Ljava/lang/Object;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private diagfl1:F

.field private diagfl2:F

.field private diagfl3:F

.field private diagsh1:I

.field private diagsh2:I

.field private diagsh3:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/Diagnostic;
    .locals 9

    .line 279
    new-instance v8, Lio/dronefleet/mavlink/slugs/Diagnostic;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl1:F

    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl2:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl3:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh1:I

    iget v5, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh2:I

    iget v6, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh3:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/slugs/Diagnostic;-><init>(FFFIIILio/dronefleet/mavlink/slugs/Diagnostic$1;)V

    return-object v8
.end method

.method public final diagfl1(F)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 1"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl1:F

    return-object p0
.end method

.method public final diagfl2(F)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 2"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 219
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl2:F

    return-object p0
.end method

.method public final diagfl3(F)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 3"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagfl3:F

    return-object p0
.end method

.method public final diagsh1(I)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 1"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 246
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh1:I

    return-object p0
.end method

.method public final diagsh2(I)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 2"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 260
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh2:I

    return-object p0
.end method

.method public final diagsh3(I)Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 3"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 274
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;->diagsh3:I

    return-object p0
.end method
