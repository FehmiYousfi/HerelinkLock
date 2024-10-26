.class public abstract Lnet/bytebuddy/implementation/FixedValue;
.super Ljava/lang/Object;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FixedValue$ForValue;,
        Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;,
        Lnet/bytebuddy/implementation/FixedValue$ForArgument;,
        Lnet/bytebuddy/implementation/FixedValue$ForThisValue;,
        Lnet/bytebuddy/implementation/FixedValue$ForOriginType;,
        Lnet/bytebuddy/implementation/FixedValue$ForNullValue;,
        Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    }
.end annotation


# instance fields
.field protected final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field protected final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 52
    iput-object p2, p0, Lnet/bytebuddy/implementation/FixedValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method

.method public static argument(I)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 3

    if-ltz p0, :cond_0

    .line 163
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForArgument;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/FixedValue$ForArgument;-><init>(I)V

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nullValue()Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    .line 181
    sget-object v0, Lnet/bytebuddy/implementation/FixedValue$ForNullValue;->INSTANCE:Lnet/bytebuddy/implementation/FixedValue$ForNullValue;

    return-object v0
.end method

.method public static originType()Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 1

    .line 190
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    invoke-direct {v0}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;-><init>()V

    return-object v0
.end method

.method public static reference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 1

    .line 116
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reference(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 1

    .line 130
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    invoke-direct {v0, p1, p0}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static self()Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 1

    .line 172
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForThisValue;

    invoke-direct {v0}, Lnet/bytebuddy/implementation/FixedValue$ForThisValue;-><init>()V

    return-object v0
.end method

.method public static value(Ljava/lang/Object;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 3

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    sget-object p0, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 78
    :cond_0
    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 79
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 80
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 81
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 82
    :cond_2
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    .line 83
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 84
    :cond_3
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_4

    .line 85
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 86
    :cond_4
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_5

    .line 87
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 88
    :cond_5
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_6

    .line 89
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 90
    :cond_6
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_7

    .line 91
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 92
    :cond_7
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_8

    .line 93
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 94
    :cond_8
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_9

    .line 95
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v0

    .line 96
    :cond_9
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 97
    new-instance v1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v1

    .line 98
    :cond_a
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 99
    new-instance v1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V

    return-object v1

    .line 101
    :cond_b
    invoke-static {p0}, Lnet/bytebuddy/implementation/FixedValue;->reference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;

    move-result-object p0

    return-object p0
.end method

.method public static value(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 2

    .line 140
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static value(Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
    .locals 2

    .line 150
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    invoke-interface {p0}, Lnet/bytebuddy/utility/JavaConstant;->asStackManipulation()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/utility/JavaConstant;->getType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method


# virtual methods
.method protected apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 3

    .line 210
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v0, p4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance p4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const/4 p5, 0x1

    aput-object v0, v1, p5

    const/4 p5, 0x2

    .line 217
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v1, p5

    invoke-direct {p4, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 218
    invoke-virtual {p4, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 219
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot return value of type "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    instance-of p1, p1, Lnet/bytebuddy/implementation/FixedValue;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 31
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/FixedValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/FixedValue;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/FixedValue;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 31
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/FixedValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
