.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RedefinitionClassVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$CodePreservingMethodVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;
    }
.end annotation


# instance fields
.field private final contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

.field private final declarableFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declarableMethods:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

.field private initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;

.field private methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

.field private final readerFlags:I

.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

.field private final writerFlags:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)V
    .locals 1

    .line 3635
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    const/high16 v0, 0x50000

    .line 3636
    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    .line 3637
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    .line 3638
    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    .line 3639
    iput p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->writerFlags:I

    .line 3640
    iput p6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->readerFlags:I

    .line 3641
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    .line 3642
    iget-object p2, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription;

    .line 3643
    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3645
    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    .line 3646
    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    .line 3647
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$600(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .locals 0

    .line 3575
    iget-object p0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    return-object p0
.end method

.method static synthetic access$700(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0

    .line 3575
    iget-object p0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    return-object p0
.end method


# virtual methods
.method protected redefine(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8

    .line 3734
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    .line 3735
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getActualModifiers()I

    move-result v3

    .line 3736
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 3737
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 3738
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v6

    .line 3739
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, p0

    .line 3735
    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p2

    invoke-direct {v1, p0, p2, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;)V

    return-object v1
.end method

.method protected redefine(Lnet/bytebuddy/description/method/MethodDescription;Z)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 10

    .line 3774
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    .line 3775
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isDefined()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3776
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers()I

    move-result v3

    .line 3777
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 3778
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 3779
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v6

    .line 3780
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 3776
    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    .line 3782
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    .line 3783
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v2

    .line 3784
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result v3

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v5

    .line 3785
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    .line 3786
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 3787
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v8

    .line 3788
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 3783
    invoke-super/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 3790
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;

    invoke-direct {p1, p0, v2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)V

    return-object p1

    .line 3791
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isNative()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3792
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    invoke-static {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$500(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    move-result-object p1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    move-result-object p1

    .line 3793
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->isRebased()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3794
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getActualModifiers()I

    move-result v4

    .line 3795
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 3796
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 3797
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getGenericSignature()Ljava/lang/String;

    move-result-object v7

    .line 3798
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 3794
    invoke-super/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    .line 3799
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 3801
    :cond_2
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;

    invoke-direct {p1, p0, v2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)V

    return-object p1

    .line 3803
    :cond_3
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$CodePreservingMethodVisitor;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    invoke-static {p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$500(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    move-result-object p2

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    move-result-object p2

    invoke-direct {p1, p0, v2, v0, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor$CodePreservingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;)V

    return-object p1
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 3658
    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v4

    .line 3659
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    invoke-static {p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$200(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;

    move-result-object p3

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    invoke-static {p4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$100(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;)Lnet/bytebuddy/implementation/Implementation$Target$Factory;

    move-result-object p4

    invoke-interface {p3, p4, v4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->compile(Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;

    move-result-object p3

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 3660
    new-instance p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Creating;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p4, p4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object p6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p6, p6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-direct {p3, p4, p5, p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Creating;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;

    .line 3661
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v0, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v1, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v2, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v5, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object p3

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 3666
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    .line 3667
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v0, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v1, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v4, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v5, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v6, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget v7, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->writerFlags:I

    iget v8, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->readerFlags:I

    invoke-interface/range {v0 .. v8}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object p3

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 3675
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p3, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    and-int/lit8 p4, p2, 0x20

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p4, p4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3676
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p5

    :goto_0
    invoke-interface {p3, p4}, Lnet/bytebuddy/description/type/TypeDescription;->getActualModifiers(Z)I

    move-result p3

    const/16 p4, 0x10

    and-int/2addr p2, p4

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3678
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousClass()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    or-int v2, p3, p4

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3679
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3680
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3681
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3682
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$300()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3683
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v5, p2

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3684
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    .line 3675
    invoke-super/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3685
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p3, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p4, p4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p5, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p4, p5}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p4

    invoke-interface {p1, p2, p3, p4}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 3705
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 3707
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitEnd()V
    .locals 5

    .line 3809
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription;

    .line 3810
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_0

    .line 3812
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 3813
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_1

    .line 3815
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;->complete(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    .line 3816
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 2

    .line 3716
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription;

    if-eqz v0, :cond_0

    .line 3718
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v1, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v0

    .line 3719
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->isImplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3720
    invoke-virtual {p0, v0, p5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->redefine(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1

    .line 3723
    :cond_0
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3690
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3691
    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object p4, p4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result p4

    .line 3693
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 10

    const-string v0, "<clinit>"

    .line 3748
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3749
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->isEnabled()Z

    move-result v3

    .line 3750
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v4

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v5, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v7, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->writerFlags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 3754
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    iget p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->readerFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    .line 3749
    :goto_1
    invoke-static/range {v3 .. v9}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->of(ZLnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;

    check-cast p1, Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object p1

    .line 3757
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    if-nez v0, :cond_3

    .line 3759
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    goto :goto_3

    :cond_3
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 3760
    :goto_2
    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->redefine(Lnet/bytebuddy/description/method/MethodDescription;Z)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 3698
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 3700
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method
