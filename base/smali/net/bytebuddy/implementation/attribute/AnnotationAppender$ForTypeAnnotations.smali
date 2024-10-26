.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypeAnnotations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPONENT_TYPE_PATH:C = '['

.field private static final EMPTY_TYPE_PATH:Ljava/lang/String; = ""

.field private static final INDEXED_TYPE_DELIMITER:C = ';'

.field private static final INNER_CLASS_PATH:C = '.'

.field private static final SUPER_CLASS_INDEX:I = -0x1

.field public static final VARIABLE_ON_INVOKEABLE:Z = false

.field public static final VARIABLE_ON_TYPE:Z = true

.field private static final WILDCARD_TYPE_PATH:C = '*'


# instance fields
.field private final annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

.field private final annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

.field private final typePath:Ljava/lang/String;

.field private final typeReference:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 417
    iput-object p2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 418
    iput p3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    .line 419
    iput-object p4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V
    .locals 1

    .line 404
    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/TypeReference;->getValue()I

    move-result p3

    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    return-void
.end method

.method private apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 4

    .line 638
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 639
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 640
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    invoke-interface {v0, v1, v2, v3, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ofExceptionType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newExceptionReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofFieldType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x13

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofInterfaceType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newSuperTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofMethodParameterType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newFormalParameterReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofMethodReturnType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x14

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofReceiverType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x15

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofSuperClass(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/4 v1, -0x1

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newSuperTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZILjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "ZI",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/16 p2, 0x11

    move v2, p2

    move p2, v0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12

    move v2, p2

    move p2, v1

    .line 551
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 552
    invoke-static {p2, p3}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeParameterReference(II)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/TypeReference;->getValue()I

    move-result v4

    .line 553
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    const-string v7, ""

    .line 554
    invoke-interface {p0, v6, p1, v4, v7}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p0

    goto :goto_2

    .line 556
    :cond_1
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v0

    .line 559
    :goto_3
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 560
    new-instance v6, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    add-int/lit8 v7, v4, 0x1

    .line 562
    invoke-static {v2, p3, v4}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeParameterBoundReference(III)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v4

    invoke-direct {v6, p0, p1, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    .line 560
    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move v4, v7

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZLjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 525
    invoke-static {p0, p1, p2, v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZILjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 333
    instance-of p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 333
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

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
    iget v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    iget v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    if-nez v1, :cond_8

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 333
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 6

    .line 571
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 6

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 617
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getSegmentCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2e

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    .line 621
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 9

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 588
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSegmentCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2e

    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v2

    .line 592
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 594
    new-instance v4, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v6, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    iget-object v7, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v7}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 600
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 601
    new-instance v4, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v6, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    .line 601
    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move v1, v8

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 1

    .line 611
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 6

    .line 579
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 582
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    return-object p1
.end method
