.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DynamicInvocation"
.end annotation


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private final bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:Lnet/bytebuddy/description/type/TypeList;

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeList;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    .line 421
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 422
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 423
    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 424
    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    .line 470
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 8

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 436
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 438
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    new-instance v7, Lnet/bytebuddy/jar/asm/Handle;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 441
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v2

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 442
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 443
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 444
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 445
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    .line 446
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 439
    invoke-virtual {p1, v0, p2, v7, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 447
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result p2

    sub-int/2addr p1, p2

    .line 448
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 454
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 455
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    .line 456
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->getOuter()Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    .line 457
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 458
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    .line 461
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 475
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 476
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 477
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 478
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 479
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 480
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
