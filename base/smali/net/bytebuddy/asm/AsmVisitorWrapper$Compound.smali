.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;
.super Ljava/lang/Object;
.source "AsmVisitorWrapper.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final asmVisitorWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            ">;)V"
        }
    .end annotation

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    .line 604
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 605
    instance-of v1, v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    iget-object v0, v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 607
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/asm/AsmVisitorWrapper;)V
    .locals 0

    .line 591
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 574
    instance-of p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 574
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 574
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public mergeReader(I)I
    .locals 2

    .line 623
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 624
    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeReader(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public mergeWriter(I)I
    .locals 2

    .line 615
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 616
    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeWriter(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    move-object v0, p0

    .line 638
    iget-object v1, v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 639
    invoke-interface/range {v2 .. v10}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v4

    goto :goto_0

    :cond_0
    return-object v4
.end method
