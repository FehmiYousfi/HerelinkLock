.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
.super Ljava/lang/Enum;
.source "DoubleConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;


# instance fields
.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const/4 v1, 0x0

    const-string v2, "ZERO"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v1, v3}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    .line 23
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const/4 v2, 0x1

    const-string v3, "ONE"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    .line 13
    sget-object v3, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    .line 28
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->opcode:I

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 13
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 54
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 56
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0

    .line 58
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
    .locals 1

    .line 13
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
    .locals 1

    .line 13
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 69
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 70
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
