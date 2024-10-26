.class public Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;


# static fields
.field static synthetic class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;


# instance fields
.field private labels:Ljava/util/List;

.field public locals:Ljava/util/List;

.field private maxLocals:I

.field private maxStack:I

.field private owner:Ljava/lang/String;

.field public stack:Ljava/util/List;

.field public uninitializedTypes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.AnalyzerAdapter"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p6}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    and-int/lit8 p1, p3, 0x8

    if-nez p1, :cond_1

    const-string p1, "<init>"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p2, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p5}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    array-length p3, p1

    if-ge p2, p3, :cond_2

    aget-object p3, p1, p2

    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object p4, p1, p2

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p4

    :goto_2
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object p4, p1, p2

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :pswitch_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p4, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_3

    :pswitch_2
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p4, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    :goto_3
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p4, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_3
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p4, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_4
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object p4, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    goto :goto_2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 p5, 0x0

    if-nez p2, :cond_1

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :cond_1
    invoke-direct {p0, p4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_6

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_6

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne p2, p3, :cond_2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    move v0, p1

    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v1, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, p4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void
.end method

.method private execute(IILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :cond_0
    const/16 v0, 0xc6

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_2

    const/4 v3, 0x3

    const/4 v4, 0x4

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    :goto_0
    :pswitch_0
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_3
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    packed-switch p2, :pswitch_data_5

    const-string p1, "[J"

    goto :goto_1

    :pswitch_4
    const-string p1, "[I"

    goto :goto_1

    :pswitch_5
    const-string p1, "[S"

    goto :goto_1

    :pswitch_6
    const-string p1, "[B"

    goto :goto_1

    :pswitch_7
    const-string p1, "[D"

    goto :goto_1

    :pswitch_8
    const-string p1, "[F"

    goto :goto_1

    :pswitch_9
    const-string p1, "[C"

    goto :goto_1

    :pswitch_a
    const-string p1, "[Z"

    goto :goto_1

    :pswitch_b
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_d

    :pswitch_c
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_d
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "JSR/RET are not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_c

    :pswitch_11
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_c

    :pswitch_12
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_8

    :pswitch_13
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_9

    :pswitch_14
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_a

    :pswitch_15
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    :goto_2
    invoke-direct {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_16
    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_a

    :pswitch_17
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_8

    :pswitch_18
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_a

    :pswitch_19
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_1a
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_1b
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1c
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_1d
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p3

    :goto_3
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    :goto_4
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_1e
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p2

    :goto_5
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1f
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_20
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_e

    :pswitch_21
    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_e

    :pswitch_22
    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_e

    :pswitch_23
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    add-int/lit8 p1, p2, 0x1

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    if-lez p2, :cond_4

    sub-int/2addr p2, v2

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq p1, p3, :cond_1

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne p1, p3, :cond_4

    goto :goto_7

    :pswitch_24
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    if-lez p2, :cond_4

    sub-int/2addr p2, v2

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq p1, p3, :cond_1

    sget-object p3, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne p1, p3, :cond_4

    :cond_1
    :goto_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto/16 :goto_2

    :pswitch_25
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    const-string p1, "java/lang/Object"

    goto :goto_d

    :pswitch_26
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_8

    :pswitch_27
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_9

    :pswitch_28
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_a

    :pswitch_29
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_c

    :pswitch_2a
    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_b

    :pswitch_2b
    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_d

    :goto_8
    :pswitch_2c
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_b

    :goto_9
    :pswitch_2d
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_d

    :goto_a
    :pswitch_2e
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    :goto_b
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_d

    :goto_c
    :pswitch_2f
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    goto :goto_d

    :pswitch_30
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    :goto_d
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_e

    :cond_3
    :pswitch_31
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    :cond_4
    :goto_e
    :pswitch_32
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_22
        :pswitch_21
        :pswitch_22
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_31
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_29
        :pswitch_18
        :pswitch_27
        :pswitch_17
        :pswitch_29
        :pswitch_18
        :pswitch_27
        :pswitch_17
        :pswitch_29
        :pswitch_18
        :pswitch_27
        :pswitch_17
        :pswitch_29
        :pswitch_18
        :pswitch_27
        :pswitch_17
        :pswitch_29
        :pswitch_18
        :pswitch_27
        :pswitch_17
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_29
        :pswitch_16
        :pswitch_29
        :pswitch_16
        :pswitch_29
        :pswitch_16
        :pswitch_29
        :pswitch_18
        :pswitch_29
        :pswitch_18
        :pswitch_29
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_29
        :pswitch_27
        :pswitch_26
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_10
        :pswitch_29
        :pswitch_29
        :pswitch_10
        :pswitch_10
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_32
        :pswitch_f
        :pswitch_f
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_20
        :pswitch_31
        :pswitch_20
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xbb
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_11
        :pswitch_31
        :pswitch_1
        :pswitch_11
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method

.method private pop()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pop(I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int p1, v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_3

    :cond_1
    const/16 p1, 0x4a

    if-eq v1, p1, :cond_3

    const/16 p1, 0x44

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x2

    :goto_2
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(I)V

    :goto_3
    return-void
.end method

.method private push(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    return-void
.end method

.method private pushDesc(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x46

    if-eq v1, v3, :cond_7

    const/16 v3, 0x53

    if-eq v1, v3, :cond_6

    const/16 v3, 0x56

    if-eq v1, v3, :cond_5

    const/16 v3, 0x49

    if-eq v1, v3, :cond_6

    const/16 v3, 0x4a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_6

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    :goto_2
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    :goto_3
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :goto_4
    return-void

    :cond_4
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :pswitch_1
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    goto :goto_3

    :cond_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private set(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_0

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-static {p2, p3, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {p4, p5, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    iget p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitIincInsn(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_0
    const/16 p2, 0x84

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    :cond_2
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    const/16 p2, 0xa7

    if-ne p1, p2, :cond_1

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    :goto_0
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    :goto_1
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string p1, "java/lang/String"

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_a

    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    const-string p1, "java/lang/invoke/MethodType"

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_9
    :goto_2
    const-string p1, "java/lang/Class"

    goto :goto_0

    :cond_a
    instance-of p1, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz p1, :cond_b

    const-string p1, "java/lang/invoke/MethodHandle"

    goto :goto_0

    :goto_3
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    const/16 p1, 0xab

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitMaxs(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    iget p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget p2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxStack:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    const/16 p1, 0xaa

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xbb

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method
