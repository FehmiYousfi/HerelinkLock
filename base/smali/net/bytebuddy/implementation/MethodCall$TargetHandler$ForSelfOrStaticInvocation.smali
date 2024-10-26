.class public final enum Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForSelfOrStaticInvocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 720
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    .line 715
    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 715
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
    .locals 1

    .line 715
    const-class v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
    .locals 1

    .line 715
    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    return-object v0
.end method


# virtual methods
.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 724
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 725
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 727
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    :goto_0
    const/4 p5, 0x0

    aput-object p4, p3, p5

    const/4 p4, 0x1

    .line 728
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    goto :goto_1

    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    :goto_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object p1, p3, p4

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2
.end method
