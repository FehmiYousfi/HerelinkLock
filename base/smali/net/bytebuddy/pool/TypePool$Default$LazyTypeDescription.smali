.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyTypeDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;
    }
.end annotation


# static fields
.field private static final NO_TYPE:Ljava/lang/String; = null

.field private static final SUPER_CLASS_INDEX:I = -0x1


# instance fields
.field private final actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousType:Z

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringTypeName:Ljava/lang/String;

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;"
        }
    .end annotation
.end field

.field private final genericSignature:Ljava/lang/String;

.field private final interfaceTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

.field private final superClassDescriptor:Ljava/lang/String;

.field private final superTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundsAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p9

    .line 2783
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    move-object v3, p1

    .line 2784
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    and-int/lit8 v3, p2, -0x21

    .line 2785
    iput v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    const v3, -0x20021

    and-int/2addr v3, p3

    .line 2786
    iput v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    .line 2787
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 2788
    sget-object v3, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 2790
    :cond_0
    invoke-static {p5}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    move-object v3, p7

    .line 2791
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    .line 2792
    invoke-static {p7}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfType;->extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    move-result-object v3

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    if-nez v1, :cond_2

    .line 2794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    :cond_1
    move-object v1, p8

    goto :goto_2

    .line 2796
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    .line 2797
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 2798
    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2801
    :goto_2
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    if-nez v2, :cond_3

    .line 2802
    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/16 v1, 0x2f

    const/16 v3, 0x2e

    .line 2804
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 2805
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    move/from16 v1, p11

    .line 2806
    iput-boolean v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    move-object/from16 v1, p12

    .line 2807
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p13

    .line 2808
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p14

    .line 2809
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p15

    .line 2810
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    move-object/from16 v1, p16

    .line 2811
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    move-object/from16 v1, p17

    .line 2812
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1400(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 0

    .line 2643
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 0

    .line 2643
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    .line 2643
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object p0
.end method


# virtual methods
.method public getActualModifiers(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2895
    iget p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    :goto_0
    return p1
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 2900
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asList(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 2859
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 2864
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 4

    .line 2839
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$1;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 2643
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 2883
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 2885
    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2

    .line 2829
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 2834
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 2910
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 2824
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveInterfaceTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 2890
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2878
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 5

    .line 2869
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2870
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2871
    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/4 v4, 0x0

    .line 2873
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 5

    .line 2817
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    const/4 v4, -0x1

    .line 2819
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveSuperClass(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_1

    .line 2817
    :cond_1
    :goto_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 2905
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, p0, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveTypeVariables(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousClass()Z
    .locals 1

    .line 2844
    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    return v0
.end method

.method public isLocalClass()Z
    .locals 1

    .line 2849
    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMemberClass()Z
    .locals 1

    .line 2854
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isMemberClass()Z

    move-result v0

    return v0
.end method
