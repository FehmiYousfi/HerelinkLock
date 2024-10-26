.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
.super Ljava/lang/Enum;
.source "ClassConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final CLASS_TYPE_INTERNAL_NAME:Ljava/lang/String; = "Ljava/lang/Class;"

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final PRIMITIVE_TYPE_FIELD:Ljava/lang/String; = "TYPE"

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;


# instance fields
.field private final fieldOwnerInternalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 21
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    const-string v3, "VOID"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 26
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Boolean;

    const/4 v3, 0x1

    const-string v4, "BOOLEAN"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Byte;

    const/4 v4, 0x2

    const-string v5, "BYTE"

    invoke-direct {v0, v5, v4, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 36
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Short;

    const/4 v5, 0x3

    const-string v6, "SHORT"

    invoke-direct {v0, v6, v5, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 41
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Character;

    const/4 v6, 0x4

    const-string v7, "CHARACTER"

    invoke-direct {v0, v7, v6, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 46
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Integer;

    const/4 v7, 0x5

    const-string v8, "INTEGER"

    invoke-direct {v0, v8, v7, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 51
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Long;

    const/4 v8, 0x6

    const-string v9, "LONG"

    invoke-direct {v0, v9, v8, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 56
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Float;

    const/4 v9, 0x7

    const-string v10, "FLOAT"

    invoke-direct {v0, v10, v9, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 61
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Double;

    const/16 v10, 0x8

    const-string v11, "DOUBLE"

    invoke-direct {v0, v11, v10, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/16 v0, 0x9

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 16
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v7

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v8

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v9

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v1, v0, v10

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 66
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 16
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 100
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 102
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 104
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 106
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 108
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 110
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 112
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 114
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 116
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 119
    :cond_8
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    .line 16
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    .line 16
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    .line 130
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    const/16 v0, 0xb2

    const-string v1, "TYPE"

    const-string v2, "Ljava/lang/Class;"

    invoke-virtual {p1, v0, p2, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
