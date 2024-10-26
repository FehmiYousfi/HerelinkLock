.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation


# instance fields
.field private final enterType:Lnet/bytebuddy/description/type/TypeDefinition;

.field private final readOnly:Z


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Z)V
    .locals 0

    .line 3374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3375
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 3376
    iput-boolean p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->readOnly:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3355
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3355
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

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
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->readOnly:Z

    iget-boolean p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->readOnly:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 3355
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->readOnly:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4f

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
    .locals 3

    .line 3381
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$Enter;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3383
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Enter;

    invoke-direct {v1, p1, v2, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Enter;)V

    return-object v1

    .line 3385
    :cond_0
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;->UNDEFINED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;

    return-object p1
.end method
