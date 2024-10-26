.class public Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;


# static fields
.field private static final OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field static synthetic class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;


# instance fields
.field protected final firstLocal:I

.field private mapping:[I

.field private newLocals:[Ljava/lang/Object;

.field protected nextLocal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->_clinit_()V

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    const/16 p1, 0x28

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    and-int/lit8 p2, p2, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput p2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    :goto_1
    array-length p2, p1

    if-ge p3, p2, :cond_1

    iget p2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    aget-object p4, p1, p3

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p4

    add-int/2addr p2, p4

    iput p2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->firstLocal:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static _clinit_()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.LocalVariablesSorter"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;

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

.method private remap(ILnet/bytebuddy/jar/asm/Type;)I
    .locals 4

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->firstLocal:I

    if-gt v0, v1, :cond_0

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocalMapping(Lnet/bytebuddy/jar/asm/Type;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->setLocalType(ILnet/bytebuddy/jar/asm/Type;)V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mapping:[I

    add-int/lit8 v1, v0, 0x1

    aput v1, p2, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private setFrameLocal(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public newLocal(Lnet/bytebuddy/jar/asm/Type;)I
    .locals 2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocalMapping(Lnet/bytebuddy/jar/asm/Type;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->setLocalType(ILnet/bytebuddy/jar/asm/Type;)V

    invoke-direct {p0, v1, v0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    return v1

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

.method protected newLocalMapping(Lnet/bytebuddy/jar/asm/Type;)I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    return v0
.end method

.method protected setLocalType(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 0

    return-void
.end method

.method protected updateNewLocals([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->updateNewLocals([Ljava/lang/Object;)V

    move v0, v3

    move v2, v0

    :goto_0
    if-ge v0, p2, :cond_8

    aget-object v4, p3, v0

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v4, v5, :cond_1

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x2

    :goto_2
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq v4, v6, :cond_7

    sget-object v6, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v7, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    if-ne v4, v7, :cond_2

    sget-object v6, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :cond_2
    sget-object v7, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    if-ne v4, v7, :cond_3

    sget-object v6, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :cond_3
    sget-object v7, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-ne v4, v7, :cond_4

    sget-object v6, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :cond_4
    sget-object v7, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v7, :cond_5

    sget-object v6, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_3

    :cond_5
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-direct {p0, v2, v6}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->remap(ILnet/bytebuddy/jar/asm/Type;)I

    move-result v6

    invoke-direct {p0, v6, v4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    :cond_7
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move p2, v3

    move v6, p2

    :goto_4
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v0, p3

    if-ge v3, v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    aget-object p3, p3, v3

    if-eqz p3, :cond_b

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq p3, v2, :cond_b

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    aput-object p3, v2, p2

    add-int/lit8 v2, p2, 0x1

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq p3, v3, :cond_9

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne p3, v3, :cond_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    :cond_a
    move v3, v0

    move v6, v2

    goto :goto_5

    :cond_b
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v2, p3, p2

    move v3, v0

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    move v5, p1

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitIincInsn(II)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-direct {p0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->remap(ILnet/bytebuddy/jar/asm/Type;)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 8

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->remap(ILnet/bytebuddy/jar/asm/Type;)I

    move-result v7

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-static/range {p6 .. p6}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    array-length v3, v1

    new-array v9, v3, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v9

    if-ge v3, v4, :cond_0

    aget v4, v1, v3

    invoke-direct {p0, v4, v2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->remap(ILnet/bytebuddy/jar/asm/Type;)I

    move-result v4

    aput v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    return-object v1
.end method

.method public visitMaxs(II)V
    .locals 1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-virtual {p2, p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-direct {p0, p2, v0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->remap(ILnet/bytebuddy/jar/asm/Type;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
