.class public Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;
.super Lnet/bytebuddy/jar/asm/tree/MethodNode;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;-><init>(Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->accept(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    :cond_1
    return-void
.end method
