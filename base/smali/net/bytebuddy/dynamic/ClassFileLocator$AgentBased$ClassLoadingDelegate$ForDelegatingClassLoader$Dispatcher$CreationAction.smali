.class public final enum Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "ClassFileLocator.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Initializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1179
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    .line 1174
    sget-object v2, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;
    .locals 1

    .line 1174
    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;
    .locals 1

    .line 1174
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Initializable;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Initializable;
    .locals 3

    .line 1184
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Resolved;

    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Resolved;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1186
    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Unresolved;

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Unresolved;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method
