.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TypeExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
    }
.end annotation


# static fields
.field private static final REAL_MODIFIER_MASK:I = 0xffff


# instance fields
.field private actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousType:Z

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private declaringTypeName:Ljava/lang/String;

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;"
        }
    .end annotation
.end field

.field private genericSignature:Ljava/lang/String;

.field private interfaceName:[Ljava/lang/String;

.field private internalName:Ljava/lang/String;

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private superClassName:Ljava/lang/String;

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

.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default;

.field private typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

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
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default;)V
    .locals 0

    .line 6935
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    const/high16 p1, 0x50000

    .line 6936
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    .line 6937
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    .line 6938
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    .line 6939
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    .line 6940
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    .line 6941
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    .line 6942
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    const/4 p1, 0x0

    .line 6943
    iput-boolean p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    .line 6944
    sget-object p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    .line 6945
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3500(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 0

    .line 6844
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3600(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 0

    .line 6844
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 21

    move-object/from16 v0, p0

    .line 7045
    new-instance v19, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    move-object/from16 v1, v19

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    iget v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    iget-boolean v12, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    iget-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v15, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    move-object/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;-><init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    const p1, 0xffff

    and-int/2addr p1, p2

    .line 6956
    iput p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    .line 6957
    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    .line 6958
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    .line 6959
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    .line 6960
    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    .line 6961
    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    .line 7023
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1, v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 6

    .line 7028
    new-instance p5, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;

    const v0, 0xffff

    and-int v2, p1, v0

    move-object v0, p5

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p5
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6975
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0xffff

    and-int/2addr p1, p4

    .line 6976
    iput p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 6978
    iput-boolean p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    :cond_0
    if-eqz p2, :cond_2

    .line 6981
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    .line 6982
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isSelfContained()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6983
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 6986
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "$"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6987
    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "L"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 8

    const-string v0, "<clinit>"

    .line 7033
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7034
    invoke-static {}, Lnet/bytebuddy/pool/TypePool$Default;->access$3300()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;

    const v0, 0xffff

    and-int v2, p1, v0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object p1, v7

    :goto_0
    return-object p1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 6967
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6969
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    :cond_1
    :goto_0
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 7

    .line 6994
    new-instance p4, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {p4, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    .line 6995
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 7009
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;

    .line 7011
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v4

    .line 7012
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;IILjava/util/Map;)V

    goto :goto_0

    .line 7016
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type reference: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6997
    :cond_1
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 6999
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSuperTypeIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    goto :goto_0

    .line 7003
    :cond_2
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 7005
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 7018
    :goto_0
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    new-instance p4, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {p4, v0, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1, p4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method
