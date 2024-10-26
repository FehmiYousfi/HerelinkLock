.class public final Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
.super Ljava/lang/Object;
.source "CtrlSrfcPt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
            ">;"
        }
    .end annotation
.end field

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitfieldpt(Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 0

    .line 140
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->bitfieldpt(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bitfieldpt(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitfield containing the passthrough configuration, see CONTROL_SURFACE_FLAG ENUM."
        enumType = Lio/dronefleet/mavlink/slugs/ControlSurfaceFlag;
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 132
    iput-object p1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final bitfieldpt(Ljava/util/Collection;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->bitfieldpt(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs bitfieldpt([Ljava/lang/Enum;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 0

    .line 147
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->bitfieldpt(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;
    .locals 4

    .line 158
    new-instance v0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->target:I

    iget-object v2, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->bitfieldpt:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$1;)V

    return-object v0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 118
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt$Builder;->target:I

    return-object p0
.end method
