.class public Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;
.super Lnet/bytebuddy/jar/asm/tree/MethodNode;

# interfaces
.implements Lnet/bytebuddy/jar/asm/Opcodes;


# static fields
.field static synthetic class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;


# instance fields
.field final dualCitizens:Ljava/util/BitSet;

.field private final mainSubroutine:Ljava/util/BitSet;

.field private final subroutineHeads:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.JSRInlinerAdapter"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;

    return-void
.end method

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

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

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

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;

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

.method private emitCode()V
    .locals 10

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-direct {v7}, Lnet/bytebuddy/jar/asm/tree/InsnList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->emitSubroutine(Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lnet/bytebuddy/jar/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iput-object v7, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iput-object v8, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    iput-object v9, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    return-void
.end method

.method private emitSubroutine(Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lnet/bytebuddy/jar/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/InsnList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->get(I)Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object v4

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v5

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    check-cast v4, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v4

    if-eq v4, v3, :cond_7

    invoke-virtual {p3, v4}, Lnet/bytebuddy/jar/asm/tree/InsnList;->add(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)V

    move-object v3, v4

    goto/16 :goto_3

    :cond_0
    if-eq v5, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v5

    const/16 v6, 0xa9

    const/16 v7, 0xa7

    if-ne v5, v6, :cond_5

    move-object v4, p1

    move-object v5, v1

    :goto_1
    if-eqz v4, :cond_3

    iget-object v6, v4, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v4, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    :cond_2
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    new-instance v4, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;

    invoke-direct {v4, v7, v5}, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;-><init>(ILnet/bytebuddy/jar/asm/tree/LabelNode;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Instruction #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " is a RET not owned by any subroutine"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v5

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_6

    check-cast v4, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;->label:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    new-instance v6, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    invoke-direct {v6, p0, p1, v5}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v4

    new-instance v5, Lnet/bytebuddy/jar/asm/tree/InsnNode;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Lnet/bytebuddy/jar/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {p3, v5}, Lnet/bytebuddy/jar/asm/tree/InsnList;->add(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)V

    new-instance v5, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;

    invoke-direct {v5, v7, v4}, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;-><init>(ILnet/bytebuddy/jar/asm/tree/LabelNode;)V

    invoke-virtual {p3, v5}, Lnet/bytebuddy/jar/asm/tree/InsnList;->add(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)V

    iget-object v4, v6, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p3, v4}, Lnet/bytebuddy/jar/asm/tree/InsnList;->add(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v4, p1}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object v4

    :goto_2
    invoke-virtual {p3, v4}, Lnet/bytebuddy/jar/asm/tree/InsnList;->add(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    iget-object v0, p3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->start:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v0

    iget-object v1, p3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->end:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, p3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->handler:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v2

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    new-instance v3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    iget-object p3, p3, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p3}, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;-><init>(Lnet/bytebuddy/jar/asm/tree/LabelNode;Lnet/bytebuddy/jar/asm/tree/LabelNode;Lnet/bytebuddy/jar/asm/tree/LabelNode;Ljava/lang/String;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal error!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;

    iget-object p4, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->start:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v4

    iget-object p4, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->end:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object v5

    if-ne v4, v5, :cond_c

    goto :goto_5

    :cond_c
    new-instance p4, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;

    iget-object v1, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget v6, p3, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;->index:I

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/tree/LabelNode;Lnet/bytebuddy/jar/asm/tree/LabelNode;I)V

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    const/4 p2, 0x1

    move v0, p2

    :cond_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v4, v2, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->handler:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v5, v2, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->start:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->end:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v5, v2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-ge v4, v2, :cond_1

    invoke-direct {p0, p1, v3, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    move v0, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->get(I)Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_3

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;->label:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    :cond_3
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/jar/asm/tree/TableSwitchInsnNode;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/tree/TableSwitchInsnNode;->dflt:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v3

    invoke-direct {p0, p1, v3, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    check-cast v0, Lnet/bytebuddy/jar/asm/tree/LookupSwitchInsnNode;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/tree/LookupSwitchInsnNode;->dflt:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->get(I)Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_6

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/InsnList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    :cond_6
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa9
        :pswitch_0
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

.method private markSubroutines()V
    .locals 5

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->markSubroutines()V

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->emitCode()V

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->accept(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/tree/MethodNode;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->getLast()Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/tree/JumpInsnNode;->label:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
