.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
.super Ljava/lang/Enum;
.source "DefaultValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum ANY_REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;


# instance fields
.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v2, 0x0

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 22
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    const/4 v3, 0x1

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 27
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 32
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 37
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    const/4 v6, 0x4

    const-string v7, "VOID"

    invoke-direct {v0, v7, v6, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 42
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    const/4 v7, 0x5

    const-string v8, "ANY_REFERENCE"

    invoke-direct {v0, v8, v7, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->ANY_REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    .line 11
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->ANY_REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v1, v0, v7

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 66
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    .line 69
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    .line 71
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    .line 73
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    .line 76
    :cond_3
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    .line 79
    :cond_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->ANY_REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
    .locals 1

    .line 11
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
    .locals 1

    .line 11
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
