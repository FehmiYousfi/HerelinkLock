.class public final enum Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "ParameterList.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    .line 192
    sget-object v2, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;
    .locals 1

    .line 192
    const-class v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;
    .locals 1

    .line 192
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->run()Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
    .locals 4

    .line 203
    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;

    const-string v1, "java.lang.reflect.Executable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getParameterCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 205
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    return-object v0
.end method