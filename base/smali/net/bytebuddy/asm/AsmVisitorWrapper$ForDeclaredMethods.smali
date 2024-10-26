.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
.super Ljava/lang/Object;
.source "AsmVisitorWrapper.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDeclaredMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;,
        Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFlags:I

.field private final writerFlags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;",
            ">;II)V"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    .line 331
    iput p2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    .line 332
    iput p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;)Ljava/util/List;
    .locals 0

    .line 298
    iget-object p0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 297
    instance-of p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 297
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iget v3, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    iget p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 297
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public mergeReader(I)I
    .locals 1

    .line 386
    iget v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    or-int/2addr p1, v0

    return p1
.end method

.method public mergeWriter(I)I
    .locals 1

    .line 381
    iget v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    or-int/2addr p1, v0

    return p1
.end method

.method public method(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    .line 356
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)V

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iget v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    invoke-direct {v0, p1, p2, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public varargs method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    .line 344
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public readerFlags(I)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 4

    .line 376
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    iget v3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    or-int/2addr p1, v3

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    .line 398
    new-instance v9, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;-><init>(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/method/MethodList;II)V

    return-object v9
.end method

.method public writerFlags(I)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3

    .line 366
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->entries:Ljava/util/List;

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->writerFlags:I

    or-int/2addr p1, v2

    iget v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->readerFlags:I

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>(Ljava/util/List;II)V

    return-object v0
.end method
