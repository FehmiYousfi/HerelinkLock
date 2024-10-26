.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.super Ljava/lang/Enum;
.source "IntegerConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;


# instance fields
.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 21
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MINUS_ONE"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 26
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const-string v5, "ZERO"

    invoke-direct {v0, v5, v3, v4}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v5, 0x4

    const-string v6, "ONE"

    invoke-direct {v0, v6, v2, v5}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 36
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v6, 0x5

    const-string v7, "TWO"

    invoke-direct {v0, v7, v4, v6}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 41
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v7, 0x6

    const-string v8, "THREE"

    invoke-direct {v0, v8, v5, v7}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 46
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const/4 v8, 0x7

    const-string v9, "FOUR"

    invoke-direct {v0, v9, v6, v8}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 51
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v9, "FIVE"

    const/16 v10, 0x8

    invoke-direct {v0, v9, v7, v10}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-array v0, v8, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 16
    sget-object v8, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v8, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v1, v0, v7

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 56
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 16
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 108
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    int-to-byte p0, p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;-><init>(B)V

    return-object v0

    .line 105
    :pswitch_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 103
    :pswitch_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 101
    :pswitch_2
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 99
    :pswitch_3
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 97
    :pswitch_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 95
    :pswitch_5
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    .line 93
    :pswitch_6
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :cond_0
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    .line 110
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;

    int-to-short p0, p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;-><init>(S)V

    return-object v0

    .line 112
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    if-eqz p0, :cond_0

    .line 79
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1

    .line 16
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1

    .line 16
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 124
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 125
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
