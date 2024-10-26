.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForArgument"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument$Factory;
    }
.end annotation


# instance fields
.field private final index:I

.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/ParameterDescription;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 1

    .line 2299
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;IZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;IZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 2312
    iput p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    .line 2313
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->readOnly:Z

    .line 2314
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Argument;)V
    .locals 2

    .line 2288
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->value()I

    move-result v0

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->readOnly()Z

    move-result v1

    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Argument;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;IZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 2258
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2258
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

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
    iget v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    iget v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->readOnly:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->readOnly:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_1
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2258
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->readOnly:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4f

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
    .locals 4

    .line 2319
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    .line 2320
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result p4

    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    if-le p4, v0, :cond_3

    .line 2323
    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p2, p4, v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    .line 2324
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p4

    const-string v0, " to "

    const-string v1, "Cannot assign "

    if-eqz p4, :cond_2

    .line 2326
    iget-boolean p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->readOnly:Z

    if-eqz p4, :cond_0

    .line 2327
    new-instance p3, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadOnly;

    iget p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-interface {p1, p4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-direct {p3, p1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    .line 2329
    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-interface {p1, v2}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    .line 2330
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2333
    new-instance p4, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;

    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-direct {p4, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p4

    .line 2331
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-interface {p1, p4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2325
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-interface {p1, p4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2321
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not define an index "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;->index:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
