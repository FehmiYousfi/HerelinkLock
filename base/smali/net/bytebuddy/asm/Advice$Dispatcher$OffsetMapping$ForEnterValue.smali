.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;
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
    name = "ForEnterValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue$Factory;
    }
.end annotation


# instance fields
.field private final enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final readOnly:Z

.field private final target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Enter;)V
    .locals 1

    .line 3318
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Enter;->readOnly()Z

    move-result v0

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Enter;->typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 3329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3330
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 3331
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 3332
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->readOnly:Z

    .line 3333
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3287
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3287
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

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
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->readOnly:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->readOnly:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    if-nez v1, :cond_8

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 3287
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

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

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->readOnly:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x4f

    goto :goto_2

    :cond_2
    const/16 v3, 0x61

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
    .locals 4

    .line 3338
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p1, p4, v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 3339
    invoke-interface {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p4

    const-string v0, " to "

    const-string v1, "Cannot assign "

    if-eqz p4, :cond_2

    .line 3341
    iget-boolean p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->readOnly:Z

    if-eqz p4, :cond_0

    .line 3342
    new-instance p3, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadOnly;

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {p3, p4, p2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadOnly;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p3

    .line 3344
    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    .line 3345
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 3348
    new-instance p4, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {p4, v0, p2, p1, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p4

    .line 3346
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3340
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->enterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
