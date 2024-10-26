.class public final Lio/dronefleet/mavlink/common/ParamValue$Builder;
.super Ljava/lang/Object;
.source "ParamValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramCount:I

.field private paramId:Ljava/lang/String;

.field private paramIndex:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamValue;
    .locals 8

    .line 283
    new-instance v7, Lio/dronefleet/mavlink/common/ParamValue;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramId:Ljava/lang/String;

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramValue:F

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramCount:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramIndex:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ParamValue;-><init>(Ljava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/common/ParamValue$1;)V

    return-object v7
.end method

.method public final paramCount(I)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of onboard parameters"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 265
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramCount:I

    return-object p0
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 204
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramIndex(I)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of this onboard parameter"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramIndex:I

    return-object p0
.end method

.method public final paramType(Lio/dronefleet/mavlink/common/MavParamType;)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0

    .line 239
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamValue$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 231
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamValue$Builder;"
        }
    .end annotation

    .line 253
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0

    .line 246
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramValue(F)Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter value"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 217
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamValue$Builder;->paramValue:F

    return-object p0
.end method
