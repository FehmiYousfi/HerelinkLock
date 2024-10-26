.class public abstract enum Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
.super Ljava/lang/Enum;
.source "MethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TerminationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

.field public static final enum DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

.field public static final enum RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2189
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$1;

    const/4 v1, 0x0

    const-string v2, "RETURNING"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    .line 2205
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$2;

    const/4 v2, 0x1

    const-string v3, "DROPPING"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    .line 2184
    sget-object v3, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/MethodCall$1;)V
    .locals 0

    .line 2184
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
    .locals 1

    .line 2184
    const-class v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
    .locals 1

    .line 2184
    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    return-object v0
.end method


# virtual methods
.method protected abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
