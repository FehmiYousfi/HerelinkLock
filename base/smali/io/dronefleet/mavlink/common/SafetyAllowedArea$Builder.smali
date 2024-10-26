.class public final Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
.super Ljava/lang/Object;
.source "SafetyAllowedArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SafetyAllowedArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private p1x:F

.field private p1y:F

.field private p1z:F

.field private p2x:F

.field private p2y:F

.field private p2z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/SafetyAllowedArea;
    .locals 10

    .line 341
    new-instance v9, Lio/dronefleet/mavlink/common/SafetyAllowedArea;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1x:F

    iget v3, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1y:F

    iget v4, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1z:F

    iget v5, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2x:F

    iget v6, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2y:F

    iget v7, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2z:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/SafetyAllowedArea;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFLio/dronefleet/mavlink/common/SafetyAllowedArea$1;)V

    return-object v9
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0

    .line 243
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame. Can be either\n                global, GPS, right-handed with Z axis up or local, right handed, Z axis down."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 234
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0

    .line 251
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final p1x(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 1 / Latitude 1"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 271
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1x:F

    return-object p0
.end method

.method public final p1y(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 1 / Longitude 1"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 284
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1y:F

    return-object p0
.end method

.method public final p1z(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 1 / Altitude 1"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 297
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p1z:F

    return-object p0
.end method

.method public final p2x(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 2 / Latitude 2"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 310
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2x:F

    return-object p0
.end method

.method public final p2y(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 2 / Longitude 2"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2y:F

    return-object p0
.end method

.method public final p2z(F)Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 2 / Altitude 2"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetyAllowedArea$Builder;->p2z:F

    return-object p0
.end method
