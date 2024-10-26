.class Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;
.super Ljava/util/AbstractMap;


# instance fields
.field final previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

.field public final rangeTable:Ljava/util/Map;

.field public final returnLabel:Lnet/bytebuddy/jar/asm/tree/LabelNode;

.field public final subroutine:Ljava/util/BitSet;

.field final synthetic this$0:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V
    .locals 5

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    if-eq v1, p3, :cond_0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Recursive invocation of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-direct {p2}, Lnet/bytebuddy/jar/asm/tree/LabelNode;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    :goto_1
    const/4 p2, 0x0

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/tree/InsnList;->size()I

    move-result v0

    move-object v1, p3

    :goto_2
    if-ge p2, v0, :cond_6

    iget-object v2, p1, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/tree/InsnList;->get(I)Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    check-cast v2, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    if-nez v1, :cond_3

    new-instance v1, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/tree/LabelNode;-><init>()V

    :cond_3
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v2

    if-ne v2, p0, :cond_5

    move-object v1, p3

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public findOwner(I)Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->get(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/tree/LabelNode;
    .locals 0

    check-cast p1, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;

    move-result-object p1

    return-object p1
.end method

.method public gotoLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    return-object p1
.end method

.method public rangeLabel(Lnet/bytebuddy/jar/asm/tree/LabelNode;)Lnet/bytebuddy/jar/asm/tree/LabelNode;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/tree/LabelNode;

    return-object p1
.end method
