.class public Lnet/bytebuddy/description/method/ParameterDescription$Latent;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final declaredAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final index:I

.field private final modifiers:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final offset:I

.field private final parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/ParameterDescription$Token;II)V
    .locals 8

    .line 683
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 684
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    .line 685
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    .line 682
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;II)V
    .locals 8

    .line 705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    sget-object v5, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    .line 703
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "II)V"
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    .line 730
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 731
    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 732
    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaredAnnotations:Ljava/util/List;

    .line 733
    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    .line 734
    iput-object p5, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    .line 735
    iput p6, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->index:I

    .line 736
    iput p7, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->offset:I

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 785
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaredAnnotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 746
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 751
    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 1

    .line 778
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->hasModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    .line 779
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 780
    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;->getModifiers()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->isNamed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    goto :goto_0

    .line 773
    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 756
    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->offset:I

    return v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 741
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamed()Z
    .locals 1

    .line 761
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
