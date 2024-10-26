.class public Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;
.super Lnet/bytebuddy/implementation/FixedValue;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForPoolValue"
.end annotation


# instance fields
.field private final loadedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 522
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 2

    .line 533
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FixedValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    .line 548
    iput-object p3, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 549
    iput-object p4, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    return-object p0
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 7

    .line 569
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 501
    instance-of p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 501
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FixedValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, v1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v1, v1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 501
    invoke-super {p0}, Lnet/bytebuddy/implementation/FixedValue;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3

    .line 554
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method
