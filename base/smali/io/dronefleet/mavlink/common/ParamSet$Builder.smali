.class public final Lio/dronefleet/mavlink/common/ParamSet$Builder;
.super Ljava/lang/Object;
.source "ParamSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramId:Ljava/lang/String;

.field private paramType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;"
        }
    .end annotation
.end field

.field private paramValue:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamSet;
    .locals 8

    .line 286
    new-instance v7, Lio/dronefleet/mavlink/common/ParamSet;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramId:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramValue:F

    iget-object v5, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ParamSet;-><init>(IILjava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ParamSet$1;)V

    return-object v7
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 233
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramType(Lio/dronefleet/mavlink/common/MavParamType;)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0

    .line 268
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamSet$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 260
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamSet$Builder;"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0

    .line 275
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramValue(F)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter value"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 246
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->paramValue:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 214
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ParamSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 201
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamSet$Builder;->targetSystem:I

    return-object p0
.end method
