.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReadWrite"
.end annotation


# instance fields
.field private final writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1

    .line 1911
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 1923
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1924
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1895
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1895
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v1, v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1895
    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 1934
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 1935
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->offset:I

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->increment(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v1, 0x0

    .line 1936
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Addition;->INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    return-object p1
.end method

.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 1929
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->writeAssignment:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->typeDefinition:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v2

    iget v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable$ReadWrite;->offset:I

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
