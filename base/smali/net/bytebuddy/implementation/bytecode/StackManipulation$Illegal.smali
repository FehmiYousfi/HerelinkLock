.class public final enum Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;
.super Ljava/lang/Enum;
.source "StackManipulation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    .line 35
    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;
    .locals 1

    .line 35
    const-class v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;
    .locals 1

    .line 35
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An illegal stack manipulation must not be applied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method