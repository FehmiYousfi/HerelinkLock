.class public final Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
.super Ljava/lang/Object;
.source "ParamExtRequestRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamExtRequestRead;
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamExtRequestRead;
    .locals 7

    .line 223
    new-instance v6, Lio/dronefleet/mavlink/common/ParamExtRequestRead;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->paramId:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->paramIndex:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ParamExtRequestRead;-><init>(IILjava/lang/String;ILio/dronefleet/mavlink/common/ParamExtRequestRead$1;)V

    return-object v6
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Parameter id, terminated by NULL if the length is\n                less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the\n                length is exactly 16 chars - applications have to provide 16+1 bytes storage if the\n                ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 202
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramIndex(I)Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter index. Set to -1 to use\n                the Parameter ID field as identifier (else param_id will be ignored)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->paramIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 183
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 170
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;->targetSystem:I

    return-object p0
.end method
