.class Lnet/bytebuddy/jar/asm/Frame;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field b:Lnet/bytebuddy/jar/asm/Label;

.field c:[I

.field d:[I

.field private e:[I

.field private f:[I

.field g:I

.field private h:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/bytebuddy/jar/asm/Frame;->_clinit_()V

    const/16 v0, 0xca

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x45

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sput-object v0, Lnet/bytebuddy/jar/asm/Frame;->a:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic _clinit_()V
    .locals 0

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x3000000

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v2, v1, Lnet/bytebuddy/jar/asm/Label;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lnet/bytebuddy/jar/asm/Label;->f:I

    neg-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I)I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    const/high16 v1, 0x2000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method private a(Lnet/bytebuddy/jar/asm/ClassWriter;I)I
    .locals 6

    const/high16 v0, 0x1700000

    const v1, 0x1000006

    if-ne p2, v1, :cond_0

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->I:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p1

    or-int/2addr p1, v0

    goto :goto_1

    :cond_0
    const/high16 v1, -0x100000

    and-int/2addr v1, p2

    const/high16 v2, 0x1800000

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->H:[Lnet/bytebuddy/jar/asm/Item;

    const v2, 0xfffff

    and-int/2addr v2, p2

    aget-object v1, v1, v2

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    aget v1, v1, v0

    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    const/high16 v3, 0xf000000

    and-int/2addr v3, v1

    const/high16 v4, 0x2000000

    const v5, 0x7fffff

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    and-int/2addr v1, v5

    aget v1, v3, v1

    :goto_3
    add-int/2addr v1, v2

    goto :goto_4

    :cond_1
    const/high16 v4, 0x3000000

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    array-length v4, v3

    and-int/2addr v1, v5

    sub-int/2addr v4, v1

    aget v1, v3, v4

    goto :goto_3

    :cond_2
    :goto_4
    if-ne p2, v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return p2
.end method

.method private static a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Ljava/lang/Object;[I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p2, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    aput v3, p3, v1

    aget-object v1, p2, v0

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v3, :cond_0

    aget-object v1, p2, v0

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v3, :cond_3

    :cond_0
    add-int/lit8 v1, v2, 0x1

    aput v4, p3, v2

    goto :goto_2

    :cond_1
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnet/bytebuddy/jar/asm/Frame;->b(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)I

    move-result v3

    aput v3, p3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    const/high16 v3, 0x1800000

    aget-object v4, p2, v0

    check-cast v4, Lnet/bytebuddy/jar/asm/Label;

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->c:I

    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, p3, v1

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    :goto_1
    return-void
.end method

.method private a(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/Frame;->b(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    const p2, 0x1000004

    if-eq p1, p2, :cond_0

    const p2, 0x1000003

    if-ne p1, p2, :cond_1

    :cond_0
    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    :cond_1
    return-void
.end method

.method private static a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z
    .locals 11

    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    move p1, v3

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, 0xff00000

    and-int v5, v0, v4

    const/high16 v6, 0x1000000

    const/high16 v7, 0x1700000

    const/high16 v8, -0x10000000

    if-eq v5, v7, :cond_6

    and-int v9, v0, v8

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_f

    and-int p0, p1, v4

    if-eq p0, v7, :cond_5

    and-int p0, p1, v8

    if-eqz p0, :cond_f

    :cond_5
    move v6, p1

    goto :goto_4

    :cond_6
    :goto_0
    if-ne p1, v3, :cond_7

    return v1

    :cond_7
    const/high16 v3, -0x100000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_9

    if-ne v5, v7, :cond_8

    and-int v3, p1, v8

    or-int/2addr v3, v7

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    invoke-virtual {p0, p1, v4}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_4

    :cond_8
    and-int p1, v0, v8

    add-int/2addr p1, v8

    :goto_1
    or-int/2addr p1, v7

    invoke-virtual {p0, v10}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int v6, p1, p0

    goto :goto_4

    :cond_9
    and-int v3, p1, v4

    if-eq v3, v7, :cond_a

    and-int v4, p1, v8

    if-eqz v4, :cond_f

    :cond_a
    and-int/2addr p1, v8

    if-eqz p1, :cond_c

    if-ne v3, v7, :cond_b

    goto :goto_2

    :cond_b
    move v3, v8

    goto :goto_3

    :cond_c
    :goto_2
    move v3, v1

    :goto_3
    add-int/2addr v3, p1

    and-int p1, v0, v8

    if-eqz p1, :cond_d

    if-ne v5, v7, :cond_e

    :cond_d
    move v8, v1

    :cond_e
    add-int/2addr v8, p1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_f
    :goto_4
    if-eq v0, v6, :cond_10

    aput v6, p2, p3

    return v2

    :cond_10
    return v1
.end method

.method private static b(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)I
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x1000002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_b

    const/16 v5, 0x4c

    const/high16 v6, 0x1700000

    if-eq v2, v5, :cond_a

    const v5, 0x1000001

    const/16 v7, 0x53

    if-eq v2, v7, :cond_9

    const/16 v8, 0x56

    if-eq v2, v8, :cond_8

    const/16 v0, 0x5a

    if-eq v2, v0, :cond_9

    const/16 v8, 0x49

    if-eq v2, v8, :cond_9

    const v9, 0x1000004

    const/16 v10, 0x4a

    if-eq v2, v10, :cond_7

    const v11, 0x1000003

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v2, v1, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_6

    if-eq v12, v7, :cond_5

    if-eq v12, v0, :cond_4

    if-eq v12, v8, :cond_3

    if-eq v12, v10, :cond_2

    packed-switch v12, :pswitch_data_1

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int v3, p0, v6

    goto :goto_2

    :pswitch_0
    move v3, v11

    goto :goto_2

    :pswitch_1
    const v3, 0x100000b

    goto :goto_2

    :pswitch_2
    const v3, 0x100000a

    goto :goto_2

    :cond_2
    move v3, v9

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    const v3, 0x1000009

    goto :goto_2

    :cond_5
    const v3, 0x100000c

    :cond_6
    :goto_2
    sub-int/2addr v2, v1

    shl-int/lit8 p0, v2, 0x1c

    or-int/2addr p0, v3

    return p0

    :pswitch_3
    return v11

    :cond_7
    return v9

    :cond_8
    return v0

    :cond_9
    :pswitch_4
    return v5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v6

    return p0

    :cond_b
    return v3

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    array-length v0, v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    aput p1, v0, v1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->f:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iput p1, v0, Lnet/bytebuddy/jar/asm/Label;->g:I

    :cond_2
    return-void
.end method

.method private c(I)V
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v0, Lnet/bytebuddy/jar/asm/Label;->f:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    iput v1, v0, Lnet/bytebuddy/jar/asm/Label;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    array-length v0, v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method a(IILnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Item;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/16 v5, 0xc6

    const/4 v6, 0x1

    if-eq v1, v5, :cond_7

    const/16 v5, 0xc7

    if-eq v1, v5, :cond_7

    const/high16 v5, 0x1700000

    const v7, 0x1000002

    const v8, 0x1000003

    const v9, 0x1000001

    const v10, 0x1000004

    const/high16 v11, 0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v12, 0x800000

    const/high16 v13, 0xf000000

    packed-switch v1, :pswitch_data_2

    const/4 v12, 0x3

    const/16 v13, 0x5b

    const/4 v15, 0x0

    const/4 v14, 0x4

    packed-switch v1, :pswitch_data_3

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_0
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_5

    goto :goto_0

    :pswitch_1
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x11700000

    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    goto/16 :goto_10

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    packed-switch v2, :pswitch_data_4

    const v1, 0x11000004

    goto/16 :goto_10

    :pswitch_3
    const v1, 0x11000001

    goto/16 :goto_10

    :pswitch_4
    const v1, 0x1100000c

    goto/16 :goto_10

    :pswitch_5
    const v1, 0x1100000a

    goto/16 :goto_10

    :pswitch_6
    const v1, 0x11000003

    goto/16 :goto_10

    :pswitch_7
    const v1, 0x11000002

    goto/16 :goto_10

    :pswitch_8
    const v1, 0x1100000b

    goto/16 :goto_10

    :pswitch_9
    const v1, 0x11000009

    goto/16 :goto_10

    :pswitch_a
    const/high16 v1, 0x1800000

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lnet/bytebuddy/jar/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    goto/16 :goto_10

    :pswitch_b
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(Ljava/lang/String;)V

    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    iget-object v2, v4, Lnet/bytebuddy/jar/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_1

    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_1

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->d(I)V

    goto :goto_1

    :pswitch_d
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    goto/16 :goto_11

    :pswitch_e
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_1

    :pswitch_f
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1
    :goto_1
    :pswitch_10
    iget-object v1, v4, Lnet/bytebuddy/jar/asm/Item;->i:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_12
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_f

    :pswitch_13
    const/4 v1, 0x2

    goto/16 :goto_9

    :pswitch_14
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_f

    :pswitch_15
    const/4 v1, 0x2

    goto/16 :goto_8

    :pswitch_16
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_b

    :pswitch_17
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_c

    :pswitch_18
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_d

    :pswitch_19
    invoke-direct {v0, v2, v9}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    goto/16 :goto_11

    :pswitch_1a
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_d

    :pswitch_1b
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_b

    :pswitch_1c
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_d

    :pswitch_1d
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto/16 :goto_11

    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v4

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    invoke-direct {v0, v4}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_3

    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v3

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_2

    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_4

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v3

    :goto_2
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    :goto_3
    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_5

    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v2

    :goto_4
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    :goto_5
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto/16 :goto_10

    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto/16 :goto_10

    :pswitch_24
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_11

    :pswitch_25
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_11

    :pswitch_26
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto/16 :goto_11

    :pswitch_27
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    if-lez v2, :cond_8

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_4

    if-ne v2, v8, :cond_2

    goto :goto_7

    :cond_2
    and-int v3, v2, v13

    if-eq v3, v11, :cond_8

    goto :goto_6

    :pswitch_28
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    if-lez v2, :cond_8

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_4

    if-ne v2, v8, :cond_3

    goto :goto_7

    :cond_3
    and-int v3, v2, v13

    if-eq v3, v11, :cond_8

    :goto_6
    or-int/2addr v2, v12

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    goto/16 :goto_11

    :cond_4
    :goto_7
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->a(II)V

    goto :goto_11

    :pswitch_29
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->a()I

    move-result v1

    const/high16 v2, -0x10000000

    add-int/2addr v1, v2

    goto :goto_10

    :goto_8
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_b

    :pswitch_2a
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_c

    :goto_9
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_d

    :pswitch_2b
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    goto :goto_f

    :pswitch_2c
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->a(I)I

    move-result v1

    goto :goto_10

    :pswitch_2d
    iget v1, v4, Lnet/bytebuddy/jar/asm/Item;->b:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_5

    const-string v1, "java/lang/invoke/MethodHandle"

    :cond_5
    :goto_a
    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    goto :goto_10

    :pswitch_2e
    const-string v1, "java/lang/String"

    goto :goto_a

    :pswitch_2f
    const-string v1, "java/lang/Class"

    goto :goto_a

    :cond_6
    const-string v1, "java/lang/invoke/MethodType"

    goto :goto_a

    :goto_b
    :pswitch_30
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_e

    :goto_c
    :pswitch_31
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_11

    :goto_d
    :pswitch_32
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    :goto_e
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_11

    :goto_f
    :pswitch_33
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_11

    :pswitch_34
    const v1, 0x1000005

    :goto_10
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->b(I)V

    goto :goto_11

    :cond_7
    :pswitch_35
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->c(I)V

    :cond_8
    :goto_11
    :pswitch_36
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_33
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2b
        :pswitch_13
        :pswitch_2a
        :pswitch_15
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_35
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_2b
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_2b
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_2b
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_2b
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_2b
        :pswitch_1c
        :pswitch_2a
        :pswitch_1b
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_2b
        :pswitch_1a
        :pswitch_2b
        :pswitch_1a
        :pswitch_2b
        :pswitch_1a
        :pswitch_2b
        :pswitch_1c
        :pswitch_2b
        :pswitch_1c
        :pswitch_2b
        :pswitch_1c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_2b
        :pswitch_2a
        :pswitch_15
        :pswitch_14
        :pswitch_18
        :pswitch_16
        :pswitch_2b
        :pswitch_13
        :pswitch_2a
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_12
        :pswitch_2b
        :pswitch_2b
        :pswitch_12
        :pswitch_12
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_36
        :pswitch_11
        :pswitch_11
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_24
        :pswitch_35
        :pswitch_24
        :pswitch_35
        :pswitch_36
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_14
        :pswitch_35
        :pswitch_0
        :pswitch_14
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_33
        :pswitch_31
        :pswitch_32
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method

.method final a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    invoke-static {p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Ljava/lang/Object;[I)I

    move-result p2

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    add-int/lit8 v1, p2, 0x1

    const/high16 v2, 0x1000000

    aput v2, v0, p2

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_1
    if-ge p3, p4, :cond_3

    aget-object v1, p5, p3

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_1

    aget-object v1, p5, p3

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, p4

    new-array p3, v0, [I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    invoke-static {p1, p4, p5, p3}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Ljava/lang/Object;[I)I

    iput p2, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    return-void
.end method

.method final a(Lnet/bytebuddy/jar/asm/ClassWriter;I[Lnet/bytebuddy/jar/asm/Type;I)V
    .locals 5

    new-array v0, p4, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    and-int/lit8 v1, p2, 0x8

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/high16 v1, 0x80000

    and-int/2addr p2, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    const/high16 v1, 0x1700000

    iget-object v3, p1, Lnet/bytebuddy/jar/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    aput v1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    const v1, 0x1000006

    aput v1, p2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    array-length p2, p3

    const/high16 v1, 0x1000000

    if-ge v0, p2, :cond_4

    aget-object p2, p3, v0

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/Frame;->b(Lnet/bytebuddy/jar/asm/ClassWriter;Ljava/lang/String;)I

    move-result p2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    add-int/lit8 v4, v2, 0x1

    aput p2, v3, v2

    const v2, 0x1000004

    if-eq p2, v2, :cond_3

    const v2, 0x1000003

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    add-int/lit8 v2, v4, 0x1

    aput v1, p2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-ge v2, p4, :cond_5

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    add-int/lit8 p2, v2, 0x1

    aput v1, p1, v2

    move v2, p2

    goto :goto_3

    :cond_5
    return-void
.end method

.method final a(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/Frame;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    array-length v4, v4

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    array-length v5, v5

    iget-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    if-nez v6, :cond_0

    new-array v6, v4, [I

    iput-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v9, v6

    const/4 v6, 0x0

    :goto_1
    const v11, 0x1000004

    const/high16 v12, 0x800000

    const/high16 v13, 0x2000000

    const/high16 v14, 0xf000000

    const/high16 v15, -0x10000000

    const v16, 0x7fffff

    const/high16 v7, 0x1000000

    if-ge v6, v4, :cond_8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    if-eqz v8, :cond_5

    array-length v10, v8

    if-ge v6, v10, :cond_5

    aget v8, v8, v6

    if-nez v8, :cond_1

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    aget v7, v7, v6

    goto :goto_3

    :cond_1
    and-int v10, v8, v15

    and-int/2addr v14, v8

    if-ne v14, v7, :cond_2

    move v7, v8

    goto :goto_3

    :cond_2
    if-ne v14, v13, :cond_3

    iget-object v13, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    and-int v14, v8, v16

    aget v13, v13, v14

    goto :goto_2

    :cond_3
    iget-object v13, v0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    and-int v14, v8, v16

    sub-int v14, v5, v14

    aget v13, v13, v14

    :goto_2
    add-int/2addr v10, v13

    and-int/2addr v8, v12

    if-eqz v8, :cond_4

    if-eq v10, v11, :cond_6

    const v8, 0x1000003

    if-ne v10, v8, :cond_4

    goto :goto_3

    :cond_4
    move v7, v10

    goto :goto_3

    :cond_5
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    aget v7, v7, v6

    :cond_6
    :goto_3
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    if-eqz v8, :cond_7

    invoke-direct {v0, v1, v7}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I)I

    move-result v7

    :cond_7
    iget-object v8, v2, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    invoke-static {v1, v7, v8, v6}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z

    move-result v7

    or-int/2addr v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-lez v3, :cond_b

    move v8, v9

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    aget v6, v6, v5

    iget-object v7, v2, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    invoke-static {v1, v6, v7, v5}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z

    move-result v6

    or-int/2addr v8, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    iget-object v4, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    if-nez v4, :cond_a

    const/4 v4, 0x1

    new-array v5, v4, [I

    iput-object v5, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    goto :goto_5

    :cond_a
    move v4, v8

    :goto_5
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v6}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z

    move-result v1

    or-int/2addr v1, v4

    return v1

    :cond_b
    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    array-length v3, v3

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/Frame;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v8, v8, Lnet/bytebuddy/jar/asm/Label;->f:I

    add-int/2addr v3, v8

    iget-object v8, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    if-nez v8, :cond_c

    iget v8, v0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    add-int/2addr v8, v3

    new-array v8, v8, [I

    iput-object v8, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    goto :goto_6

    :cond_c
    move v4, v9

    :goto_6
    move v8, v4

    move v4, v6

    :goto_7
    if-ge v4, v3, :cond_e

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    aget v9, v9, v4

    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    if-eqz v10, :cond_d

    invoke-direct {v0, v1, v9}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I)I

    move-result v9

    :cond_d
    iget-object v10, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    invoke-static {v1, v9, v10, v4}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z

    move-result v9

    or-int/2addr v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget v4, v0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    if-ge v6, v4, :cond_15

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    aget v4, v4, v6

    and-int v9, v4, v15

    and-int v10, v4, v14

    if-ne v10, v7, :cond_10

    move v9, v4

    :cond_f
    const v4, 0x1000003

    goto :goto_a

    :cond_10
    if-ne v10, v13, :cond_11

    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    and-int v17, v4, v16

    aget v10, v10, v17

    goto :goto_9

    :cond_11
    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    and-int v17, v4, v16

    sub-int v17, v5, v17

    aget v10, v10, v17

    :goto_9
    add-int/2addr v9, v10

    and-int/2addr v4, v12

    if-eqz v4, :cond_f

    const v4, 0x1000003

    if-eq v9, v11, :cond_12

    if-ne v9, v4, :cond_13

    :cond_12
    move v9, v7

    :cond_13
    :goto_a
    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    if-eqz v10, :cond_14

    invoke-direct {v0, v1, v9}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I)I

    move-result v9

    :cond_14
    iget-object v10, v2, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    add-int v4, v3, v6

    invoke-static {v1, v9, v10, v4}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/ClassWriter;I[II)Z

    move-result v4

    or-int/2addr v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_15
    return v8
.end method

.method final b(Lnet/bytebuddy/jar/asm/Frame;)V
    .locals 1

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->c:[I

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->d:[I

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->e:[I

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->f:[I

    iget v0, p1, Lnet/bytebuddy/jar/asm/Frame;->g:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->g:I

    iget v0, p1, Lnet/bytebuddy/jar/asm/Frame;->h:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->h:I

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->i:[I

    return-void
.end method
