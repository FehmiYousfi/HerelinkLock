.class public final Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
.super Ljava/lang/Object;
.source "ParamMapRc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamMapRc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramId:Ljava/lang/String;

.field private paramIndex:I

.field private paramValue0:F

.field private paramValueMax:F

.field private paramValueMin:F

.field private parameterRcChannelIndex:I

.field private scale:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamMapRc;
    .locals 12

    .line 414
    new-instance v11, Lio/dronefleet/mavlink/common/ParamMapRc;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramId:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramIndex:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->parameterRcChannelIndex:I

    iget v6, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValue0:F

    iget v7, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->scale:F

    iget v8, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValueMin:F

    iget v9, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValueMax:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/ParamMapRc;-><init>(IILjava/lang/String;IIFFFFLio/dronefleet/mavlink/common/ParamMapRc$1;)V

    return-object v11
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 320
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramIndex(I)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter index. Send -1 to use the param ID\n                field as identifier (else the param id will be ignored), send -2 to disable any\n                existing map for this rc_channel_index."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 337
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramIndex:I

    return-object p0
.end method

.method public final paramValue0(F)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Initial parameter value"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 366
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValue0:F

    return-object p0
.end method

.method public final paramValueMax(F)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum param value. The protocol does not\n                define if this overwrites an onboard maximum value. (Depends on implementation)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 409
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValueMax:F

    return-object p0
.end method

.method public final paramValueMin(F)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum param value. The protocol does not\n                define if this overwrites an onboard minimum value. (Depends on implementation)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 394
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->paramValueMin:F

    return-object p0
.end method

.method public final parameterRcChannelIndex(I)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of parameter RC channel.\n                Not equal to the RC channel id. Typically corresponds to a potentiometer-knob on the\n                RC."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 353
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->parameterRcChannelIndex:I

    return-object p0
.end method

.method public final scale(F)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Scale, maps the RC range [-1, 1] to a parameter value"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 379
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->scale:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 301
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ParamMapRc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 288
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamMapRc$Builder;->targetSystem:I

    return-object p0
.end method
