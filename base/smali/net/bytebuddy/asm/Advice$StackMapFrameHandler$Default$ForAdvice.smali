.class public Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForAdvice"
.end annotation


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field protected final requiredTypes:Lnet/bytebuddy/description/type/TypeList;

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

.field protected final translationMode:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

.field private final yieldedTypes:Lnet/bytebuddy/description/type/TypeList;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;)V
    .locals 0

    .line 1405
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 1407
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 1408
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 1409
    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->translationMode:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    return-void
.end method


# virtual methods
.method public injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V
    .locals 12

    .line 1456
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$400(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$500(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    if-nez p2, :cond_2

    .line 1457
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1460
    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->size()I

    move-result p2

    new-array v3, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1462
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v2, p2, 0x1

    .line 1463
    invoke-static {v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, p2

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1465
    array-length v2, v3

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object p2

    array-length v4, p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x3

    .line 1458
    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object p2

    array-length v8, p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object p2

    array-length v10, p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 1468
    :cond_3
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 1447
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$400(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$500(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x4

    .line 1448
    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1450
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 13

    .line 1432
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$400(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$500(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1433
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 1436
    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v8, 0x3

    .line 1434
    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v0

    array-length v9, v0

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v0

    array-length v11, v0

    invoke-static {}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->access$600()[Ljava/lang/Object;

    move-result-object v12

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 1439
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1440
    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 1441
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1440
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1439
    :goto_2
    invoke-virtual {v0, p1, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    .line 1419
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->translationMode:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
