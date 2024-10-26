.class public Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;


# instance fields
.field private clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private counter:I

.field private name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/ClassVisitor;)V

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->name:Ljava/lang/String;

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 13

    move-object v0, p0

    const-string v1, "<clinit>"

    move-object v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->counter:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    const/16 v7, 0xa

    move-object v8, v1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v12

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-nez v2, :cond_0

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

    :cond_0
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->clinit:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v7, 0xb8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v9, v1

    move-object/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/commons/StaticInitMerger;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v12

    :goto_0
    return-object v12
.end method
