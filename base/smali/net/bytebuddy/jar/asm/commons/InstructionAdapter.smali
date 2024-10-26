.class public Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;


# static fields
.field public static final OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field static synthetic class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->_clinit_()V

    const-string v0, "Ljava/lang/Object;"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-void
.end method

.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static _clinit_()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.InstructionAdapter"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;

    return-void
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
    .locals 0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public aconst(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public add(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x60

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public aload(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public and(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x7e

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public anew(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public areturn(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arraylength()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public astore(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public athrow()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public cast(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    if-eq p1, p2, :cond_e

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_2

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x90

    :goto_0
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_2

    :cond_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8f

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x8e

    :goto_1
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->cast(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_5

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8d

    goto :goto_0

    :cond_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8c

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x8b

    goto :goto_1

    :cond_5
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_8

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8a

    goto :goto_0

    :cond_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x89

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x88

    goto :goto_1

    :cond_8
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_9

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x91

    goto :goto_0

    :cond_9
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x92

    goto :goto_0

    :cond_a
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x87

    goto :goto_0

    :cond_b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x86

    goto :goto_0

    :cond_c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x85

    goto :goto_0

    :cond_d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_e

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x93

    goto/16 :goto_0

    :cond_e
    :goto_2
    return-void
.end method

.method public checkcast(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public cmpg(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v1, :cond_0

    const/16 p1, 0x96

    goto :goto_0

    :cond_0
    const/16 p1, 0x98

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public cmpl(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v1, :cond_0

    const/16 p1, 0x95

    goto :goto_0

    :cond_0
    const/16 p1, 0x97

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dconst(D)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0xe

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public div(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x6c

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X1()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX1()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public fconst(F)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0xb

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public getfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goTo(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public hconst(Lnet/bytebuddy/jar/asm/Handle;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public iconst(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x10

    :goto_0
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_1

    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public ifacmpeq(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifacmpne(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifeq(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifge(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifgt(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9d

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmpeq(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmpge(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmpgt(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmple(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmplt(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ificmpne(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifle(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public iflt(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifne(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifnonnull(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifnull(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public iinc(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public instanceOf(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public invokedynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb9

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0xb7

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESPECIAL on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0xb8

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESTATIC on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKEVIRTUAL on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public jsr(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public lcmp()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public lconst(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public load(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public lookupswitch(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public mark(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public monitorenter()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorexit()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public mul(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x68

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public multianewarray(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public neg(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x74

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public newarray(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbd

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void

    :pswitch_0
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbc

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nop()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public or(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public putfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rem(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x70

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public ret(I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public shl(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x78

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public shr(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x7a

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public store(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x36

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public sub(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public swap()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public varargs tableswitch(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public tconst(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public ushr(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->putfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->getfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->putstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->getstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->iinc(II)V

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->areturn(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_1

    :pswitch_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_2

    :pswitch_8
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->cmpg(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_9
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_2
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->cmpl(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_a
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->lcmp()V

    goto/16 :goto_16

    :pswitch_b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_e
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_5

    :pswitch_f
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_6

    :pswitch_10
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :pswitch_11
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_4

    :pswitch_12
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_6

    :pswitch_13
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :pswitch_14
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_4

    :pswitch_15
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_5

    :pswitch_16
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_3
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_17
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_4
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_18
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_5
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_7

    :pswitch_19
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_6
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_7
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->cast(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_1a
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_8

    :pswitch_1b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_8
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->xor(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_1c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_9

    :pswitch_1d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_9
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->or(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_1e
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_a

    :pswitch_1f
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_a
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->and(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_20
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_b

    :pswitch_21
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_b
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ushr(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_22
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_c

    :pswitch_23
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_c
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->shr(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_24
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_d

    :pswitch_25
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_d
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->shl(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_26
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_e

    :pswitch_27
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_e

    :pswitch_28
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_e

    :pswitch_29
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_e
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->neg(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_2a
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_f

    :pswitch_2b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_f

    :pswitch_2c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_f

    :pswitch_2d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_f
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->rem(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_2e
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_10

    :pswitch_2f
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_10

    :pswitch_30
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_10

    :pswitch_31
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_10
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->div(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_32
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_11

    :pswitch_33
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_11

    :pswitch_34
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_11

    :pswitch_35
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_11
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mul(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_36
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_12

    :pswitch_37
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_12

    :pswitch_38
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_12

    :pswitch_39
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_12
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->sub(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_3a
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_13

    :pswitch_3b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_13

    :pswitch_3c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_13

    :pswitch_3d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_13
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->add(Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_16

    :pswitch_3e
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->swap()V

    goto/16 :goto_16

    :pswitch_3f
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dup2X2()V

    goto/16 :goto_16

    :pswitch_40
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dup2X1()V

    goto/16 :goto_16

    :pswitch_41
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dup2()V

    goto/16 :goto_16

    :pswitch_42
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dupX2()V

    goto/16 :goto_16

    :pswitch_43
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dupX1()V

    goto/16 :goto_16

    :pswitch_44
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dup()V

    goto/16 :goto_16

    :pswitch_45
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->pop2()V

    goto/16 :goto_16

    :pswitch_46
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->pop()V

    goto/16 :goto_16

    :pswitch_47
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_48
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_49
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_4a
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_4b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_4c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_4d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_14

    :pswitch_4e
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_14
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->astore(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_16

    :pswitch_4f
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_50
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_51
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_52
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_53
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_54
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_55
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_15

    :pswitch_56
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_15
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->aload(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_16

    :pswitch_57
    add-int/lit8 p1, p1, -0xe

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_16

    :pswitch_58
    add-int/lit8 p1, p1, -0xb

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_16

    :pswitch_59
    add-int/lit8 p1, p1, -0x9

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_16

    :pswitch_5a
    add-int/lit8 p1, p1, -0x3

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_16

    :pswitch_5b
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_16

    :pswitch_5c
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->nop()V

    goto :goto_16

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->monitorexit()V

    goto :goto_16

    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->monitorenter()V

    goto :goto_16

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->athrow()V

    goto :goto_16

    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->arraylength()V

    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->newarray(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->iconst(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->invokedynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->jsr(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->goTo(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifacmpne(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifacmpeq(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmple(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmpgt(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmpge(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmplt(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmpne(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ificmpeq(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifle(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifgt(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifge(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->iflt(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifne(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifeq(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifnonnull(Lnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ifnull(Lnet/bytebuddy/jar/asm/Label;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->iconst(I)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_9

    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->tconst(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_a

    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->hconst(Lnet/bytebuddy/jar/asm/Handle;)V

    :goto_1
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->lookupswitch(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

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

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->multianewarray(Ljava/lang/String;I)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->tableswitch(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->instanceOf(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->checkcast(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->newarray(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->anew(Lnet/bytebuddy/jar/asm/Type;)V

    :goto_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->store(ILnet/bytebuddy/jar/asm/Type;)V

    goto :goto_2

    :pswitch_5
    sget-object p1, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_1

    :pswitch_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_1

    :pswitch_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_1

    :pswitch_8
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_1

    :pswitch_9
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_1
    invoke-virtual {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->load(ILnet/bytebuddy/jar/asm/Type;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->ret(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public xor(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/InstructionAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method
