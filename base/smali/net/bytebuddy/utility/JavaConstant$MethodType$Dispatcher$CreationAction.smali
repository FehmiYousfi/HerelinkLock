.class public final enum Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "JavaConstant.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 313
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    .line 308
    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;
    .locals 1

    .line 308
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;
    .locals 1

    .line 308
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->run()Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
    .locals 5

    .line 319
    :try_start_0
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    .line 320
    new-instance v1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;

    const-string v2, "returnType"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "parameterArray"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 322
    :catch_0
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForLegacyVm;

    return-object v0
.end method
