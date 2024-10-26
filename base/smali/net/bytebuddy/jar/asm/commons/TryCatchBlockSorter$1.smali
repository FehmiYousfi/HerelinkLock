.class Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->this$0:Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blockLength(Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->this$0:Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->start:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->this$0:Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter;->instructions:Lnet/bytebuddy/jar/asm/tree/InsnList;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;->end:Lnet/bytebuddy/jar/asm/tree/LabelNode;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/tree/InsnList;->indexOf(Lnet/bytebuddy/jar/asm/tree/AbstractInsnNode;)I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    check-cast p2, Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->compare(Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;)I
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->blockLength(Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;)I

    move-result p1

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/commons/TryCatchBlockSorter$1;->blockLength(Lnet/bytebuddy/jar/asm/tree/TryCatchBlockNode;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
