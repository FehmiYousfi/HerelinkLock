.class Lnet/bytebuddy/jar/asm/MethodWriter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field private $:Lnet/bytebuddy/jar/asm/ByteVector;

.field private A:I

.field private B:Lnet/bytebuddy/jar/asm/Handler;

.field private C:Lnet/bytebuddy/jar/asm/Handler;

.field private D:I

.field private E:Lnet/bytebuddy/jar/asm/ByteVector;

.field private F:I

.field private G:Lnet/bytebuddy/jar/asm/ByteVector;

.field private H:I

.field private I:Lnet/bytebuddy/jar/asm/ByteVector;

.field private J:Lnet/bytebuddy/jar/asm/Attribute;

.field private K:I

.field private final L:I

.field private M:Lnet/bytebuddy/jar/asm/Label;

.field private N:Lnet/bytebuddy/jar/asm/Label;

.field private O:Lnet/bytebuddy/jar/asm/Label;

.field private P:I

.field private Q:I

.field private R:I

.field private T:I

.field private U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private Y:I

.field private Z:I

.field final b:Lnet/bytebuddy/jar/asm/ClassWriter;

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:[I

.field private l:Lnet/bytebuddy/jar/asm/ByteVector;

.field private m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private q:Lnet/bytebuddy/jar/asm/Attribute;

.field private r:Lnet/bytebuddy/jar/asm/ByteVector;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lnet/bytebuddy/jar/asm/ByteVector;

.field private w:I

.field private x:[I

.field private z:[I


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->D:Lnet/bytebuddy/jar/asm/MethodWriter;

    if-nez v0, :cond_0

    iput-object p0, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->D:Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->E:Lnet/bytebuddy/jar/asm/MethodWriter;

    iput-object p0, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    :goto_0
    iput-object p0, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->E:Lnet/bytebuddy/jar/asm/MethodWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    :cond_1
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->d:I

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->e:I

    iput-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz p6, :cond_2

    array-length p3, p6

    if-lez p3, :cond_2

    array-length p3, p6

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    new-array p3, p3, [I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->k:[I

    const/4 p3, 0x0

    :goto_1
    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->k:[I

    aget-object p5, p6, p3

    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p5

    aput p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    iput p7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 p1, 0x3

    if-eq p7, p1, :cond_4

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    iget p2, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_4
    return-void
.end method

.method private a(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method private a(II)V
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    aget v0, v0, p1

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x7

    const/high16 v3, 0x1700000

    const/high16 v4, 0xff00000

    const v5, 0xfffff

    if-nez v1, :cond_2

    and-int v1, v0, v5

    and-int/2addr v0, v4

    if-eq v0, v3, :cond_1

    const/high16 v2, 0x1800000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ClassWriter;->H:[Lnet/bytebuddy/jar/asm/Item;

    aget-object v1, v2, v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Item;->c:I

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/ClassWriter;->H:[Lnet/bytebuddy/jar/asm/Item;

    aget-object v1, v3, v1

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v1, v1, 0x1c

    :goto_1
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_3

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v7

    goto :goto_1

    :cond_3
    and-int v1, v0, v4

    if-ne v1, v3, :cond_4

    const/16 v1, 0x4c

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ClassWriter;->H:[Lnet/bytebuddy/jar/asm/Item;

    and-int/2addr v0, v5

    aget-object v0, v1, v0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4a

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x53

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x43

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x42

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_2

    :cond_5
    const/16 v0, 0x44

    goto :goto_2

    :cond_6
    const/16 v0, 0x46

    goto :goto_2

    :cond_7
    const/16 v0, 0x49

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Edge;-><init>()V

    iput p1, v0, Lnet/bytebuddy/jar/asm/Edge;->a:I

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method private a(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/16 v1, 0xab

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    invoke-direct {p0, v2, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    move p1, v2

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    invoke-direct {p0, v2, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    aget-object v0, p2, p1

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    :goto_1
    array-length p1, p2

    if-ge v2, p1, :cond_1

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->e()V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->x:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->c()V

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->x:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    return-void
.end method

.method private b(Lnet/bytebuddy/jar/asm/Frame;)V
    .locals 10

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v0

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v3, v6, :cond_3

    aget v6, v0, v3

    const/high16 v9, 0x1000000

    add-int/lit8 v5, v5, 0x1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    move v5, v3

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_6

    aget v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-direct {p0, p1, v4, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(III)I

    move-result p1

    move v3, p1

    move p1, v2

    :goto_3
    if-lez v4, :cond_9

    aget v5, v0, p1

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v9, v3, 0x1

    aput v5, v6, v3

    if-eq v5, v8, :cond_7

    if-ne v5, v7, :cond_8

    :cond_7
    add-int/lit8 p1, p1, 0x1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v9

    goto :goto_3

    :cond_9
    :goto_4
    array-length p1, v1

    if-ge v2, p1, :cond_c

    aget p1, v1, v2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v3, 0x1

    aput p1, v0, v3

    if-eq p1, v8, :cond_a

    if-ne p1, v7, :cond_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->b()V

    return-void
.end method

.method private c()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v1, v1, v4

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v7, 0x32

    if-ge v4, v7, :cond_0

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v3, v6

    invoke-direct {v0, v6, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    return-void

    :cond_0
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->x:[I

    aget v7, v4, v2

    iget v8, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    if-nez v8, :cond_1

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    aget v4, v4, v5

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    aget v8, v8, v5

    aget v4, v4, v5

    sub-int/2addr v8, v4

    add-int/lit8 v4, v8, -0x1

    :goto_0
    const/16 v8, 0xfc

    const/16 v9, 0xf8

    const/16 v10, 0xf7

    const/16 v11, 0x40

    const/16 v12, 0xff

    const/16 v13, 0xfb

    if-nez v1, :cond_3

    sub-int v2, v3, v7

    packed-switch v2, :pswitch_data_0

    move v14, v12

    goto :goto_1

    :pswitch_0
    move v14, v8

    goto :goto_1

    :pswitch_1
    if-ge v4, v11, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v13

    goto :goto_1

    :pswitch_2
    move v7, v3

    move v14, v9

    :goto_1
    move/from16 v16, v14

    move v14, v2

    move/from16 v2, v16

    goto :goto_3

    :cond_3
    if-ne v3, v7, :cond_5

    if-ne v1, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_4

    move v2, v11

    goto :goto_2

    :cond_4
    move v2, v10

    :goto_2
    move v14, v5

    goto :goto_3

    :cond_5
    move v14, v5

    move v2, v12

    :goto_3
    if-eq v2, v12, :cond_7

    move v15, v6

    :goto_4
    if-ge v5, v7, :cond_7

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    aget v6, v6, v15

    iget-object v12, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->x:[I

    aget v12, v12, v15

    if-eq v6, v12, :cond_6

    const/16 v2, 0xff

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    const/16 v12, 0xff

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v2, :cond_d

    if-eq v2, v11, :cond_c

    if-eq v2, v10, :cond_b

    if-eq v2, v9, :cond_a

    if-eq v2, v13, :cond_9

    if-eq v2, v8, :cond_8

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    invoke-direct {v0, v2, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    goto :goto_8

    :cond_8
    const/4 v2, 0x3

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v14, v13

    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v7, v2

    add-int/2addr v3, v2

    invoke-direct {v0, v7, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    goto :goto_8

    :cond_9
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v14, v13

    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    :goto_6
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_8

    :cond_b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v4, v11

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_7
    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(II)V

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    new-instance v1, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/Frame;-><init>()V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    invoke-virtual {v0, p0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;I[B)Z

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->g:I

    :goto_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    :cond_1
    return-void
.end method

.method private f()V
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(III)I

    move-result v0

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/lit8 v3, v2, 0x8

    const/high16 v4, 0x1700000

    if-nez v3, :cond_1

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v6, v5, Lnet/bytebuddy/jar/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v4

    aput v5, v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x6

    aput v5, v2, v0

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x46

    if-eq v2, v6, :cond_9

    const/16 v6, 0x3b

    const/16 v7, 0x4c

    if-eq v2, v7, :cond_7

    const/16 v8, 0x53

    if-eq v2, v8, :cond_6

    const/16 v8, 0x49

    if-eq v2, v8, :cond_6

    const/16 v8, 0x4a

    if-eq v2, v8, :cond_5

    const/16 v8, 0x5a

    if-eq v2, v8, :cond_6

    const/16 v8, 0x5b

    if-eq v2, v8, :cond_2

    const/4 v0, 0x3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    sub-int/2addr v3, v0

    aput v3, v2, v1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->b()V

    return-void

    :pswitch_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v6, v3, 0x1

    aput v0, v2, v3

    :goto_2
    move v0, v5

    move v3, v6

    goto :goto_1

    :cond_2
    :goto_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/2addr v5, v1

    invoke-virtual {v8, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v4

    aput v0, v2, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v2, v3, 0x1

    const/4 v6, 0x4

    aput v6, v0, v3

    goto :goto_5

    :cond_6
    :pswitch_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v2, v3, 0x1

    aput v1, v0, v3

    :goto_5
    move v3, v2

    move v0, v5

    goto :goto_1

    :cond_7
    move v0, v5

    :goto_6
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v4

    aput v0, v2, v3

    move v3, v6

    move v0, v9

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v2, v3, 0x1

    const/4 v6, 0x2

    aput v6, v0, v3

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a()I
    .locals 13

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->i:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xffff

    const/16 v6, 0x8

    if-lez v0, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    if-gt v0, v5, :cond_9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "Code"

    invoke-virtual {v0, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    mul-int/2addr v7, v6

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v7, v8}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_1
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v8, "LocalVariableTypeTable"

    invoke-virtual {v7, v8}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_2
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v8, "LineNumberTable"

    invoke-virtual {v7, v8}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_3
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    and-int/2addr v7, v5

    const/16 v8, 0x32

    if-lt v7, v8, :cond_4

    move v7, v3

    goto :goto_0

    :cond_4
    move v7, v4

    :goto_0
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    if-eqz v7, :cond_5

    const-string v7, "StackMapTable"

    goto :goto_1

    :cond_5
    const-string v7, "StackMap"

    :goto_1
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_6
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v7, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_7
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v7, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_8
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v7, :cond_b

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v10, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v10, v10, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    iget v12, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v6

    :cond_b
    :goto_2
    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    if-lez v7, :cond_c

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v8, "Exceptions"

    invoke-virtual {v7, v8}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_c
    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_e

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    and-int/2addr v5, v7

    const/16 v7, 0x31

    if-lt v5, v7, :cond_d

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-eqz v5, :cond_e

    :cond_d
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "Synthetic"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_e
    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v7, 0x20000

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "Deprecated"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_f
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "Signature"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_10
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "MethodParameters"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x7

    add-int/2addr v0, v5

    :cond_11
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "AnnotationDefault"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    :cond_12
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "RuntimeVisibleAnnotations"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_13
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v7, "RuntimeInvisibleAnnotations"

    invoke-virtual {v5, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_14
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v5, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    array-length v2, v1

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_3
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    if-lt v1, v2, :cond_18

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v5, v2, v1

    if-nez v5, :cond_17

    move v2, v4

    goto :goto_4

    :cond_17
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_18
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    array-length v2, v1

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_5
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    if-lt v1, v2, :cond_1a

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v3, v2, v1

    if-nez v3, :cond_19

    move v2, v4

    goto :goto_6

    :cond_19
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1a
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->q:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method final a(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v9, 0x40000

    and-int v2, v1, v9

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0xe0000

    or-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->d:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->e:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->h:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ClassWriter;->K:Lnet/bytebuddy/jar/asm/ClassReader;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->h:I

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->i:I

    invoke-virtual {v8, v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void

    :cond_0
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const/4 v10, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    if-lez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v2, :cond_4

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    and-int/2addr v2, v13

    if-lt v2, v12, :cond_3

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v14, 0x20000

    and-int/2addr v2, v14

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->q:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleTypeAnnotations"

    const/4 v6, 0x2

    if-lez v1, :cond_27

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0xc

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_10

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_10
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_11

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_11
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_12

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_12
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_13

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_13
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_14
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_15
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_16

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v11, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    iget v14, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v11

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v1, v2, v10, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    if-lez v1, :cond_17

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    :goto_1
    if-eqz v1, :cond_17

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget v2, v2, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget v3, v1, Lnet/bytebuddy/jar/asm/Handler;->e:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    :cond_17
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_2

    :cond_18
    move v1, v10

    :goto_2
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    :cond_19
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_1d

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1e
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->D:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1f
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_20

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->F:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_20
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->H:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_21
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    and-int/2addr v1, v13

    const/16 v2, 0x32

    if-lt v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_3

    :cond_22
    move v1, v10

    :goto_3
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    if-eqz v1, :cond_23

    const-string v1, "StackMapTable"

    goto :goto_4

    :cond_23
    const-string v1, "StackMap"

    :goto_4
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_24
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_25
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_26
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_27

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    iget v11, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    move v14, v6

    move v6, v11

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    goto :goto_5

    :cond_27
    move v14, v6

    move-object v11, v7

    :goto_5
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    if-lez v1, :cond_28

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    mul-int/2addr v2, v14

    add-int/2addr v2, v14

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move v1, v10

    :goto_6
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->j:I

    if-ge v1, v2, :cond_28

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->k:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ClassWriter;->b:I

    and-int/2addr v1, v13

    if-lt v1, v12, :cond_29

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    and-int/2addr v1, v9

    if-eqz v1, :cond_2a

    :cond_29
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2a
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->Z:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_2f
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_30

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_30
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_31
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_32
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    invoke-static {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a([Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_33
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    invoke-static {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a([Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_34
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->q:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_35

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_35
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->m:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->n:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 7

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->l:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->J:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->q:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->q:Lnet/bytebuddy/jar/asm/Attribute;

    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p3, :cond_a

    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/4 p4, -0x2

    const/16 v2, 0x4a

    const/16 v3, 0x44

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    if-eq p3, v3, :cond_6

    if-ne p3, v2, :cond_7

    goto :goto_0

    :pswitch_0
    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    if-eq p3, v3, :cond_1

    if-ne p3, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    add-int/2addr p4, v0

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    if-eq p3, v3, :cond_7

    if-ne p3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p4, -0x1

    goto :goto_1

    :pswitch_2
    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    if-eq p3, v3, :cond_4

    if-ne p3, v2, :cond_5

    :cond_4
    const/4 v1, 0x2

    :cond_5
    add-int/2addr p4, v1

    goto :goto_2

    :cond_6
    :goto_0
    const/4 p4, -0x3

    :cond_7
    :goto_1
    add-int/2addr p4, v0

    :goto_2
    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le p4, p3, :cond_8

    iput p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_8
    iput p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p3, p3, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p3, p1, v0, p4, p2}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_a
    :goto_4
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {p3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v0, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    new-instance p3, Lnet/bytebuddy/jar/asm/CurrentFrame;

    invoke-direct {p3}, Lnet/bytebuddy/jar/asm/CurrentFrame;-><init>()V

    iput-object p3, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iput-object p3, p1, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p3, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p1, p3, p5, v0, p2}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Lnet/bytebuddy/jar/asm/Type;I)V

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->f()V

    goto/16 :goto_c

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->b(Lnet/bytebuddy/jar/asm/Frame;)V

    goto/16 :goto_c

    :cond_3
    const/4 v0, 0x0

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->x:[I

    if-nez p1, :cond_4

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->f()V

    :cond_4
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-direct {p0, p1, p2, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(III)I

    move-result p1

    move v1, p1

    move p1, v0

    :goto_0
    const-string v2, ""

    const/high16 v3, 0x1800000

    const/high16 v4, 0x1700000

    if-ge p1, p2, :cond_7

    aget-object v5, p3, p1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    aget-object v6, p3, p1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, v1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_5
    aget-object v4, p3, p1

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p3, p1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    aget-object v7, p3, p1

    check-cast v7, Lnet/bytebuddy/jar/asm/Label;

    iget v7, v7, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v6, v2, v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, v1

    move v1, v5

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    if-ge v0, p4, :cond_a

    aget-object p1, p5, v0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 p2, v1, 0x1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    aget-object v5, p5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p3

    or-int/2addr p3, v4

    aput p3, p1, v1

    :goto_4
    move v1, p2

    goto :goto_5

    :cond_8
    aget-object p1, p5, v0

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 p2, v1, 0x1

    aget-object p3, p5, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p1, v1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    add-int/lit8 p2, v1, 0x1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    aget-object v5, p5, v0

    check-cast v5, Lnet/bytebuddy/jar/asm/Label;

    iget v5, v5, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {p3, v2, v5}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result p3

    or-int/2addr p3, v3

    aput p3, p1, v1

    goto :goto_4

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->b()V

    goto/16 :goto_c

    :cond_b
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v3, 0x3

    if-nez v1, :cond_c

    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->w:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    if-gez v1, :cond_e

    if-ne p1, v3, :cond_d

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_e
    :goto_6
    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_14

    const/4 p3, 0x2

    const/16 v4, 0xfb

    if-eq p1, p3, :cond_12

    const/16 p2, 0x40

    if-eq p1, v3, :cond_11

    const/4 p3, 0x4

    if-eq p1, p3, :cond_f

    goto/16 :goto_b

    :cond_f
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-ge v1, p2, :cond_10

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_10
    const/16 p2, 0xf7

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_7
    aget-object p1, p5, v0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    if-ge v1, p2, :cond_13

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_b

    :cond_12
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    sub-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    sub-int/2addr v4, p2

    :cond_13
    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_b

    :cond_14
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    add-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 p5, p2, 0xfb

    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_8
    if-ge v0, p2, :cond_17

    aget-object p1, p3, v0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xff

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move p1, v0

    :goto_9
    if-ge p1, p2, :cond_16

    aget-object v1, p3, p1

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_16
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->v:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_a
    if-ge v0, p4, :cond_17

    aget-object p1, p5, v0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    :goto_b
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->w:I

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    add-int/2addr p1, v2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->u:I

    :goto_c
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->T:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/16 v1, 0x84

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    if-le v0, v2, :cond_2

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    :cond_2
    const/16 v0, 0xff

    if-gt p1, v0, :cond_4

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_4

    const/16 v0, -0x80

    if-ge p2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->a(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    sget-object v1, Lnet/bytebuddy/jar/asm/Frame;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->e()V

    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    const v0, -0xffff01

    and-int/2addr p1, v0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-static {p1, p2, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(ILnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget p2, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method

.method public visitIntInsn(II)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_3
    :goto_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->a(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p1

    iget p3, p1, Lnet/bytebuddy/jar/asm/Item;->c:I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/4 v0, 0x0

    const/16 v1, 0xba

    if-eqz p4, :cond_4

    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz p4, :cond_3

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lnet/bytebuddy/jar/asm/Item;->c:I

    :cond_1
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    shr-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    and-int/lit8 p3, p3, 0x3

    add-int/2addr p2, p3

    add-int/2addr p2, v2

    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le p2, p3, :cond_2

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_2
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p2, v1, v0, p3, p1}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_4
    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {p2, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 9

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, -0x21

    :cond_1
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/16 v5, 0xa8

    const/16 v6, 0xa7

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    iget v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-nez v8, :cond_2

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v4, p1, v1, v7, v7}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    iget v8, v4, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Lnet/bytebuddy/jar/asm/Label;->a:I

    invoke-direct {p0, v1, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    if-eq p1, v6, :cond_6

    new-instance v7, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v7}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_1

    :cond_2
    if-ne v8, v2, :cond_3

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v4, p1, v1, v7, v7}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_5

    iget v4, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_4

    iget v4, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->K:I

    add-int/2addr v4, v2

    iput v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->K:I

    :cond_4
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget v7, v4, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v4, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    new-instance v7, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v7}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_1

    :cond_5
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    sget-object v8, Lnet/bytebuddy/jar/asm/Frame;->a:[I

    aget v8, v8, p1

    add-int/2addr v4, v8

    iput v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    invoke-direct {p0, v4, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_6
    :goto_1
    iget v4, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    iget v4, p2, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v4, v8

    const/16 v8, -0x8000

    if-ge v4, v8, :cond_b

    if-ne p1, v6, :cond_7

    :goto_2
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_7
    if-ne p1, v5, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0xc9

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_9

    iget v1, v7, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Lnet/bytebuddy/jar/asm/Label;->a:I

    :cond_9
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xa6

    if-gt p1, v3, :cond_a

    add-int/lit8 v3, p1, 0x1

    xor-int/2addr v3, v2

    sub-int/2addr v3, v2

    goto :goto_3

    :cond_a
    xor-int/lit8 v3, p1, 0x1

    :goto_3
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_c

    add-int/lit8 v1, p1, 0x21

    :goto_4
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p0, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_6

    :cond_c
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, p0, v0, v3, v1}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    :goto_6
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p2, :cond_e

    if-eqz v7, :cond_d

    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_d
    if-ne p1, v6, :cond_e

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->e()V

    :cond_e
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-boolean v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->J:Z

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v2, v3}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;I[B)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->J:Z

    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget v2, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_2
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v0, :cond_3

    new-instance v0, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Frame;-><init>()V

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->c:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget v2, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    return-void

    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    :goto_0
    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    :cond_5
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_7

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_7
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_9

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->g:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_9
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->N:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_a
    :goto_1
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/16 v1, 0x12

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p1, Lnet/bytebuddy/jar/asm/Item;->b:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Lnet/bytebuddy/jar/asm/Item;->b:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/2addr v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/lit8 v0, v0, 0x2

    :goto_1
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le v0, v4, :cond_3

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_3
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, v1, v4, v5, p1}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_5
    :goto_3
    iget v0, p1, Lnet/bytebuddy/jar/asm/Item;->a:I

    iget v4, p1, Lnet/bytebuddy/jar/asm/Item;->b:I

    if-eq v4, v3, :cond_8

    iget p1, p1, Lnet/bytebuddy/jar/asm/Item;->b:I

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    const/16 p1, 0x100

    if-lt v0, p1, :cond_7

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x13

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->a(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_6

    :cond_8
    :goto_4
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x14

    :goto_5
    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_6
    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->H:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->I:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v1, :cond_0

    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->F:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->F:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->G:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, p4, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget v3, p4, Lnet/bytebuddy/jar/asm/Label;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p3, :cond_2

    new-instance p3, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p3}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2
    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->D:I

    add-int/2addr p3, v0

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->D:I

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->E:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p4, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {p3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lnet/bytebuddy/jar/asm/Label;->c:I

    iget p4, p4, Lnet/bytebuddy/jar/asm/Label;->c:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p4, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p3, p2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    if-le p6, p1, :cond_5

    iput p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    iget v2, v2, Lnet/bytebuddy/jar/asm/Label;->c:I

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->c:I

    aget-object v4, p3, v1

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lnet/bytebuddy/jar/asm/TypePath;->a:[B

    iget p4, p2, Lnet/bytebuddy/jar/asm/TypePath;->b:I

    aget-byte p3, p3, p4

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    iget-object p4, p2, Lnet/bytebuddy/jar/asm/TypePath;->a:[B

    iget p2, p2, Lnet/bytebuddy/jar/asm/TypePath;->b:I

    invoke-virtual {v0, p4, p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p2, p6}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 p3, 0x1

    iget p1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 p6, p1, -0x2

    move-object p1, v1

    move-object p4, v0

    move-object p5, v0

    invoke-direct/range {p1 .. p6}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p7, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :goto_2
    return-object v1
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v4, p3

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    array-length v1, p3

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    aget v4, p2, v3

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    aget-object v1, p3, v3

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, p0, v4, v0, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 13

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_e

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    :goto_0
    const/high16 p2, 0x1700000

    const-string v0, "java/lang/Throwable"

    if-eqz p1, :cond_2

    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v5

    iget-object v6, p1, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v6

    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v7

    iget-object v8, p1, Lnet/bytebuddy/jar/asm/Handler;->d:Ljava/lang/String;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Handler;->d:Ljava/lang/String;

    :goto_1
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr p2, v0

    iget v0, v6, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Lnet/bytebuddy/jar/asm/Label;->a:I

    :goto_2
    if-eq v5, v7, :cond_1

    new-instance v0, Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Edge;-><init>()V

    iput p2, v0, Lnet/bytebuddy/jar/asm/Edge;->a:I

    iput-object v6, v0, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object v8, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v8, v0, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v0, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->c:I

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v7

    iget v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    invoke-virtual {p1, v5, v6, v7, v8}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Lnet/bytebuddy/jar/asm/Type;I)V

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->b(Lnet/bytebuddy/jar/asm/Frame;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    move v5, v3

    :goto_3
    if-eqz p1, :cond_7

    iget-object v6, p1, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    iput-object v1, p1, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget v8, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    iget v8, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/2addr v8, v2

    iput v8, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    :cond_3
    iget v8, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object v8, v7, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    array-length v8, v8

    iget v9, p1, Lnet/bytebuddy/jar/asm/Label;->g:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_4

    move v5, v8

    :cond_4
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    :goto_4
    if-eqz p1, :cond_6

    iget-object v8, p1, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Label;->a()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v8

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget-object v10, v8, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget v11, p1, Lnet/bytebuddy/jar/asm/Edge;->a:I

    invoke-virtual {v7, v9, v10, v11}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Frame;I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    if-nez v9, :cond_5

    iput-object v6, v8, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    move-object v6, v8

    :cond_5
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_4

    :cond_6
    move-object p1, v6

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    :goto_5
    if-eqz p1, :cond_c

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget v6, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->b(Lnet/bytebuddy/jar/asm/Frame;)V

    :cond_8
    iget v1, p1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_b

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    iget v6, p1, Lnet/bytebuddy/jar/asm/Label;->c:I

    if-nez v1, :cond_9

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    goto :goto_6

    :cond_9
    iget v7, v1, Lnet/bytebuddy/jar/asm/Label;->c:I

    :goto_6
    sub-int/2addr v7, v4

    if-lt v7, v6, :cond_b

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v8, v6

    :goto_7
    if-ge v8, v7, :cond_a

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    aput-byte v3, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v7

    invoke-direct {p0, v6, v3, v4}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(III)I

    move-result v6

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->z:[I

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v8, p2

    aput v8, v7, v6

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->b()V

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v6, p1, v1}, Lnet/bytebuddy/jar/asm/Handler;->a(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    :cond_b
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    :goto_8
    if-eqz p1, :cond_d

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    add-int/2addr p2, v4

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_8

    :cond_d
    iput v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    goto/16 :goto_11

    :cond_e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1d

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    :goto_9
    const v0, 0x7fffffff

    if-eqz p2, :cond_11

    iget-object v5, p2, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget-object v6, p2, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget-object v7, p2, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    :goto_a
    if-eq v5, v7, :cond_10

    new-instance v8, Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v8}, Lnet/bytebuddy/jar/asm/Edge;-><init>()V

    iput v0, v8, Lnet/bytebuddy/jar/asm/Edge;->a:I

    iput-object v6, v8, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v9, v5, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_f

    iget-object v9, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v9, v8, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v8, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_b

    :cond_f
    iget-object v9, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v9, v8, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v9, v5, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iput-object v8, v9, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    :goto_b
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_a

    :cond_10
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_9

    :cond_11
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->K:I

    if-lez p2, :cond_16

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v1, v6, v7, p2}, Lnet/bytebuddy/jar/asm/Label;->b(Lnet/bytebuddy/jar/asm/Label;JI)V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    move v5, v3

    :goto_c
    if-eqz p2, :cond_13

    iget v8, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_12

    iget-object v8, p2, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v8, v8, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v8, v8, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v9, v8, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_12

    add-int/lit8 v5, v5, 0x1

    int-to-long v9, v5

    const-wide/16 v11, 0x20

    div-long/2addr v9, v11

    shl-long/2addr v9, v2

    rem-int/lit8 v11, v5, 0x20

    shl-long v11, v6, v11

    or-long/2addr v9, v11

    iget v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->K:I

    invoke-virtual {v8, v1, v9, v10, v11}, Lnet/bytebuddy/jar/asm/Label;->b(Lnet/bytebuddy/jar/asm/Label;JI)V

    :cond_12
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_c

    :cond_13
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    :goto_d
    if-eqz p2, :cond_16

    iget v1, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_15

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    :goto_e
    if-eqz v1, :cond_14

    iget v2, v1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v1, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_e

    :cond_14
    iget-object v1, p2, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    const-wide/16 v5, 0x0

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->K:I

    invoke-virtual {v1, p2, v5, v6, v2}, Lnet/bytebuddy/jar/asm/Label;->b(Lnet/bytebuddy/jar/asm/Label;JI)V

    :cond_15
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_d

    :cond_16
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->M:Lnet/bytebuddy/jar/asm/Label;

    :cond_17
    if-eqz p2, :cond_1c

    iget-object v1, p2, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    iget v2, p2, Lnet/bytebuddy/jar/asm/Label;->f:I

    iget v5, p2, Lnet/bytebuddy/jar/asm/Label;->g:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_18

    move v3, v5

    :cond_18
    iget-object v5, p2, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Edge;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_19

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    :cond_19
    move-object p2, v1

    :goto_f
    if-eqz v5, :cond_17

    iget-object v1, v5, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v6, v1, Lnet/bytebuddy/jar/asm/Label;->a:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1b

    iget v6, v5, Lnet/bytebuddy/jar/asm/Edge;->a:I

    if-ne v6, v0, :cond_1a

    move v6, v4

    goto :goto_10

    :cond_1a
    iget v6, v5, Lnet/bytebuddy/jar/asm/Edge;->a:I

    add-int/2addr v6, v2

    :goto_10
    iput v6, v1, Lnet/bytebuddy/jar/asm/Label;->f:I

    iget v6, v1, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v1, Lnet/bytebuddy/jar/asm/Label;->a:I

    iput-object p2, v1, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    move-object p2, v1

    :cond_1b
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_f

    :cond_1c
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    goto :goto_11

    :cond_1d
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->s:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    :goto_11
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p2

    iget p3, p2, Lnet/bytebuddy/jar/asm/Item;->c:I

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz p5, :cond_4

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lnet/bytebuddy/jar/asm/Item;->c:I

    :cond_1
    const/16 p5, 0xb8

    if-ne p1, p5, :cond_2

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    shr-int/lit8 v2, p3, 0x2

    sub-int/2addr p5, v2

    and-int/lit8 v2, p3, 0x3

    add-int/2addr p5, v2

    add-int/2addr p5, v1

    goto :goto_0

    :cond_2
    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    :goto_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le p5, v1, :cond_3

    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_3
    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object p5, p5, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p5, p1, v0, v1, p2}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_5
    :goto_2
    const/16 p5, 0xb9

    if-ne p1, p5, :cond_7

    if-nez p3, :cond_6

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lnet/bytebuddy/jar/asm/Item;->c:I

    :cond_6
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {p1, p5, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->a(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {p3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/16 v1, 0xc5

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    sub-int/2addr v2, p2

    add-int/2addr v0, v2

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, v1, p2, v2, p1}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Z:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->$:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->R:I

    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 p2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance p2, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p3, :cond_2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p3, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->o:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v0, p3, p1

    iput-object v0, p2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aput-object p2, p3, p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p3, :cond_3

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_3
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->p:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v0, p3, p1

    iput-object v0, p2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aput-object p2, p3, p1

    :goto_0
    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p3, p0, v1, v0, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    array-length p1, p4

    if-ge v3, p1, :cond_0

    aget-object p1, p4, v3

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p1, p0, p2, v0, v2}, Lnet/bytebuddy/jar/asm/Label;->a(Lnet/bytebuddy/jar/asm/MethodWriter;Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->a(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(ILnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget p2, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->W:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->X:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    new-instance v0, Lnet/bytebuddy/jar/asm/Handler;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Handler;-><init>()V

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iput-object p2, v0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iput-object p3, v0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iput-object p4, v0, Lnet/bytebuddy/jar/asm/Handler;->d:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Lnet/bytebuddy/jar/asm/Handler;->e:I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->C:Lnet/bytebuddy/jar/asm/Handler;

    if-nez p1, :cond_1

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->B:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    :cond_1
    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    :goto_1
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->C:Lnet/bytebuddy/jar/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(ILnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    iget p2, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->U:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->V:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Item;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->b:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1, v1, v2, p2}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Item;->a:I

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    const/16 v1, 0xa9

    const/16 v2, 0x100

    if-eqz v0, :cond_4

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget v3, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    or-int/2addr v3, v2

    iput v3, v0, Lnet/bytebuddy/jar/asm/Label;->a:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    iput v3, v0, Lnet/bytebuddy/jar/asm/Label;->f:I

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->e()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    sget-object v3, Lnet/bytebuddy/jar/asm/Frame;->a:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    if-le v0, v3, :cond_2

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->Q:I

    :cond_2
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->P:I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->O:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lnet/bytebuddy/jar/asm/Frame;->a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V

    :cond_4
    :goto_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/16 v0, 0x16

    if-eq p1, v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x37

    if-eq p1, v0, :cond_6

    const/16 v0, 0x39

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v0, p2, 0x2

    :goto_3
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    if-le v0, v3, :cond_7

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->t:I

    :cond_7
    const/4 v0, 0x4

    const/16 v3, 0x36

    if-ge p2, v0, :cond_9

    if-eq p1, v1, :cond_9

    if-ge p1, v3, :cond_8

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    goto :goto_4

    :cond_8
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    :goto_4
    add-int/2addr v0, p2

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->r:Lnet/bytebuddy/jar/asm/ByteVector;

    if-lt p2, v2, :cond_a

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_a
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->a(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_5
    if-lt p1, v3, :cond_b

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->L:I

    if-nez p1, :cond_b

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->A:I

    if-lez p1, :cond_b

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_b
    return-void
.end method
