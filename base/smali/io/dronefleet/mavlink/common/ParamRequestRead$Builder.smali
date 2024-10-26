.class public final Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
.super Ljava/lang/Object;
.source "ParamRequestRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamRequestRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramId:Ljava/lang/String;

.field private paramIndex:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamRequestRead;
    .locals 7

    .line 232
    new-instance v6, Lio/dronefleet/mavlink/common/ParamRequestRead;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->paramId:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->paramIndex:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ParamRequestRead;-><init>(IILjava/lang/String;ILio/dronefleet/mavlink/common/ParamRequestRead$1;)V

    return-object v6
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 211
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramIndex(I)Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter index. Send -1 to use the param ID\n                field as identifier (else the param id will be ignored)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 227
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->paramIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 192
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 179
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;->targetSystem:I

    return-object p0
.end method
