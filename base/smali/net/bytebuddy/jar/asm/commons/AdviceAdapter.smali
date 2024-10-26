.class public abstract Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;
.super Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;

# interfaces
.implements Lnet/bytebuddy/jar/asm/Opcodes;


# static fields
.field private static final OTHER:Ljava/lang/Object;

.field private static final THIS:Ljava/lang/Object;


# instance fields
.field private branches:Ljava/util/Map;

.field private constructor:Z

.field protected methodAccess:I

.field protected methodDesc:Ljava/lang/String;

.field private stackFrame:Ljava/util/List;

.field private superInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->_clinit_()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->methodAccess:I

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->methodDesc:Ljava/lang/String;

    const-string p1, "<init>"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    return-void
.end method

.method static synthetic _clinit_()V
    .locals 0

    return-void
.end method

.method private addBranch(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addBranches(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->addBranch(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object v0, p2, p1

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->addBranch(Lnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p2, :cond_5

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    const/4 p3, 0x0

    move p5, p3

    :goto_0
    array-length v0, p2

    const/4 v1, 0x2

    if-ge p5, v0, :cond_1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    aget-object v0, p2, p5

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0xb6

    if-eq p1, p2, :cond_3

    const/16 p2, 0xb7

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb9

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->superInitialized:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->onMethodEnter()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->superInitialized:Z

    iput-boolean p3, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-eq p1, p2, :cond_5

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p1

    if-ne p1, v1, :cond_5

    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private peekValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pushValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onMethodEnter()V
    .locals 0

    return-void
.end method

.method protected onMethodExit(I)V
    .locals 0

    return-void
.end method

.method public visitCode()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->superInitialized:Z

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->onMethodEnter()V

    :goto_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x4a

    if-eq p3, p4, :cond_0

    const/16 p4, 0x44

    if-ne p3, p4, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    const/16 p3, 0xb2

    if-eq p1, p3, :cond_4

    const/16 p3, 0xb3

    if-eq p1, p3, :cond_3

    const/16 p3, 0xb5

    if-eq p1, p3, :cond_2

    if-eqz p2, :cond_5

    :goto_0
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz p2, :cond_5

    :goto_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public visitInsn(I)V
    .locals 4

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    const/16 v1, 0xbf

    if-eqz v0, :cond_2

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_1

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_7

    :pswitch_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x4

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :pswitch_7
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->peekValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :pswitch_8
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :pswitch_9
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :pswitch_a
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_4

    :pswitch_b
    sget-object v0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :pswitch_c
    sget-object v0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    :goto_3
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_0
    :goto_4
    :pswitch_d
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_7

    :cond_1
    :goto_5
    :pswitch_e
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_6

    :cond_2
    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_5

    goto :goto_7

    :cond_3
    :goto_6
    :pswitch_f
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->onMethodExit(I)V

    :cond_4
    :goto_7
    :pswitch_10
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_c
        :pswitch_10
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xac
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xac
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    iget-boolean p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p2, :cond_0

    const/16 p2, 0xbc

    if-eq p1, p2, :cond_0

    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p1, :cond_2

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length p4, p1

    const/4 v0, 0x2

    if-ge p3, p4, :cond_1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    aget-object p4, p1, p3

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p4

    if-ne p4, v0, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-eq p1, p2, :cond_2

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p1

    if-ne p1, v0, :cond_2

    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    :pswitch_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->addBranch(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    iget-boolean p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->addBranches(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    iget-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    iget-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->addBranches(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    iget-boolean p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    iget-boolean p2, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz p2, :cond_0

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->visitVarInsn(II)V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :pswitch_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    if-nez p2, :cond_0

    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    :pswitch_4
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
