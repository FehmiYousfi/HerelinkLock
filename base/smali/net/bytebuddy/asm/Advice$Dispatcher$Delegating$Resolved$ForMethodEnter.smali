.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForMethodEnter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
    }
.end annotation


# instance fields
.field private final prependLineNumber:Z

.field private final skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;

    .line 6203
    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForAllArguments$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForAllArguments$Factory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForField$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForField$Factory;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Factory;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUnusedValue$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUnusedValue$Factory;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForStubValue;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForStubValue;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Illegal;

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lnet/bytebuddy/asm/Advice$Thrown;

    aput-object v6, v5, v2

    const-class v2, Lnet/bytebuddy/asm/Advice$Enter;

    aput-object v2, v5, v3

    const-class v2, Lnet/bytebuddy/asm/Advice$Return;

    aput-object v2, v5, v4

    invoke-direct {v1, v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Illegal;-><init>([Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 6204
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 6212
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1600()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 6203
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 6213
    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-result-object p2

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    .line 6214
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1700()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->prependLineNumber:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;
    .locals 0

    .line 6183
    invoke-super/range {p0 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 6257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 6258
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 6259
    :cond_2
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;

    .line 6260
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->prependLineNumber:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->prependLineNumber:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getEnterType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 6219
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 6265
    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 6266
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6267
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->prependLineNumber:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isPrependLineNumber()Z
    .locals 1

    .line 6224
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->prependLineNumber:Z

    return v0
.end method

.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;
    .locals 12

    move-object v0, p0

    .line 6236
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->offsetMappings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6237
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->offsetMappings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;

    .line 6241
    invoke-static {p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context$ForMethodEntry;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;

    move-result-object v3

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p5

    .line 6238
    invoke-interface {v2, p1, p2, v7, v3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v6, p2

    .line 6243
    new-instance v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodEnter;

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v3, p6

    .line 6248
    invoke-interface {v3, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    move-result-object v7

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v3, p7

    .line 6249
    invoke-interface {v3, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-result-object v8

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;

    move-object/from16 v3, p8

    .line 6250
    invoke-interface {v1, v3}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;->bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    move-result-object v9

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->skipDispatcher:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-object v1, v11

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodEnter;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;)V

    return-object v11
.end method

.method protected bridge synthetic resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 0

    .line 6183
    invoke-virtual/range {p0 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    move-result-object p1

    return-object p1
.end method
