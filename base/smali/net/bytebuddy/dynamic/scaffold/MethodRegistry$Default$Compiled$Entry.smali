.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;
.super Ljava/lang/Object;
.source "MethodRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final bridgeMethod:Z

.field private final bridgeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final visibility:Lnet/bytebuddy/description/modifier/Visibility;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/description/modifier/Visibility;",
            "Z)V"
        }
    .end annotation

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    .line 975
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    .line 976
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 977
    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    .line 978
    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    .line 979
    iput-boolean p6, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    return-void
.end method


# virtual methods
.method protected bind(Lnet/bytebuddy/description/type/TypeDescription;Z)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 4

    .line 990
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 991
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForNonImplementedMethod;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-direct {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForNonImplementedMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    return-object p1

    .line 993
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;->assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 994
    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    .line 995
    invoke-static {v0, p1, p2, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->of(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 925
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 925
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    iget-boolean p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 925
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x4f

    goto :goto_5

    :cond_5
    const/16 v1, 0x61

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method
